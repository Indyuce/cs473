#include <defs.h>
#include <taskman/semaphore.h>

#include <implement_me.h>

__global static struct taskman_handler semaphore_handler;


struct wait_data {
    // to be passed as an argument.
    // what kind of data do we need to put here
    // so that the semaphore works correctly?

    // We need only a pointer to the semaphore struct
    struct taskman_semaphore* semaphore;
    int operation; // 0 for down 1 for up

};

static int impl(struct wait_data* wait_data) {
    // implement the semaphore logic here
    // do not forget to check the header file

    // Retrieve semaphore struct from wait_data
    struct taskman_semaphore* semaphore = wait_data->semaphore;

    // Caught a down operation
    if(wait_data->operation == 0) {

        // If the count is not 0 decrement the semaphore
        if (semaphore->count > 0) {
            semaphore->count -= 1;
            // Return 1, that task can now resume
            return 1;
        }

        // Else task must wait the next impl() check and that another 
        // task calls up(). Task must wait.
        return 0;
    }
    
    // Caught an up operation
    else {

        // If we do not exceed the max number of semaphores
        if (semaphore->count < semaphore->max){
            semaphore->count += 1;
            // Returns 1, task can resume
            return 1;
        }

        // Else the task must wait another impl() check and that another
        // task calls down(). Task must wait.
        return 0;
    }
}

static int on_wait(struct taskman_handler* handler, void* stack, void* arg) {
    UNUSED(handler);
    UNUSED(stack);

    return impl((struct wait_data*)arg);
}

static int can_resume(struct taskman_handler* handler, void* stack, void* arg) {
    UNUSED(handler);
    UNUSED(stack);

    return impl((struct wait_data*)arg);
}

static void loop(struct taskman_handler* handler) {
    UNUSED(handler);
}

/* END SOLUTION */

void taskman_semaphore_glinit() {
    semaphore_handler.name = "semaphore";
    semaphore_handler.on_wait = &on_wait;
    semaphore_handler.can_resume = &can_resume;
    semaphore_handler.loop = &loop;

    taskman_register(&semaphore_handler);
}

void taskman_semaphore_init(
    struct taskman_semaphore* semaphore,
    uint32_t initial,
    uint32_t max
) {
    semaphore->count = initial;
    semaphore->max = max;
}


// The operations are set in these two functions but the actual increment / decrement is done in impl()

void __no_optimize taskman_semaphore_down(struct taskman_semaphore* semaphore) {

    // We need to pass by argument wait_data so let's reconstruct it thanks to semaphore
    struct wait_data wait_data;
    wait_data.semaphore = semaphore;
    wait_data.operation = 0;

    // Wait until the semaphore is another time > 0
    taskman_wait(&semaphore_handler, &wait_data);
}

void __no_optimize taskman_semaphore_up(struct taskman_semaphore* semaphore) {

    // We need to pass by argument wait_data so let's reconstruct it thanks to semaphore
    struct wait_data wait_data;
    wait_data.semaphore = semaphore;
    wait_data.operation = 1;

    // Wait until semaphore is under max
    taskman_wait(&semaphore_handler, &wait_data);
}
