/* ************************************************************************** */
/** x500_main.c

  @Description
    Main file.
 
 */
/* ************************************************************************** */

#include "io_setup.h"
#include "uart1_setup.h"
#include "and08479_accelerometer_spi"
#include "stdio.h"
#include "xc.h"


// delete later start

// header defines

#define CTRL_REG1       0x20
#define CTRL_REG2       0x21
#define CTRL_REG3       0x22
#define CTRL_REG4       0x23
#define CTRL_REG5       0x24
#define CTRL_REG6       0x25
#define REFERENCE       0x26
#define INT1_THS        0x32
#define INT1_DUR        0x33
#define INT1_CFG        0x34
#define FIFO_CTRL       0x2E

#define OUT_X_L         0x28
#define OUT_X_H         0x29
#define OUT_Y_L         0x2A
#define OUT_Y_H         0x2B
#define OUT_Z_L         0x2C
#define OUT_Z_H         0x2D

// The chip select pin being used for the accelerometer

#define ACCEL_CS              LATGbits.LATG9

// delete later end

void setup(void)
{
    io_setup();
    uart1_setup();
    spi2_setup();
    accel_setup();
    // include any other setup functions here
}

void test_accel(void)
{   
    putchar(' ');
    
    int16_t test = spi2_read_register(0x0F);  // read WHO_AM_I register
    
    if (test == 0x0033)
    {
        printf("Pass");
    }
    else
    {
        printf("Fail");
    }
}

void accel_print_data(char axis)
{
    float data;
    
    if (axis == 'x')
    {
        data = accel_read_x();
    }
    else if (axis == 'y')
    {
        data = accel_read_y();
    }
    else if (axis == 'z')
    {
        data = accel_read_x();
    }
    
    char buffer[50]; 
    sprintf(buffer, "%f", data); 
    printf("%s \n", buffer);
}

void accel_move_cursor(void)
{
    if (accel_read_x() > 0.4)
    {
        putchar(' ');
    }
    else if (accel_read_x() < -0.4)
    {
        putchar(0x8);
    }
    
}

void button_on(int x)
{
    if (x == 1)
    {
        LED1 = 1;
	// whatever else you want to do if button 1 is pressed
    }
    else if (x == 2)
    {
        LED2 = 1;
    }
    else if (x == 3)
    {
        LED3 = 1;
    }
}

void button_off(int x)
{
    if (x == 1)
    {
        LED1 = 0;
    }
    else if (x == 2)
    {
        LED2 = 0;
    }
    else if (x == 3)
    {
        LED3 = 0;
    }
}

void buttons(void)
{
    // Include code for debouncing every time a button is pressed
    // BUTTONs are pulled-up, so poll for low state
    // With De-bounce
    
    if (!BUTTON1)
    {
        
        delay(30);
        if(!BUTTON1){ button_on(1); 
        printf("X Axis: ");
        accel_print_data('x');
        
    }
        
    }
    else
    {
        button_off(1);
    }
    
    if (!BUTTON2)
    {
        
        delay(30);
        if(!BUTTON2){ 
            
            button_on(2); 
            printf("Y Axis: "); 
            accel_print_data('y');
            
        }
        
    }
    else
    {
        button_off(2);
    }
    
    if (!BUTTON3)
    {
        
        delay(30);
        if(!BUTTON3){ button_on(3); puts("\033[3B"); }
        
    }
    else
    {
        button_off(3);
    } 
}



// - - - END TEST DEMO - - -

int main(void)
{
    setup();

    delay(100);                  // 100 ms delay as precaution
    
    while(1)
    { 
        
        buttons();
        
    }

    return 0;
}


/* *****************************************************************************
 End of File
 */
