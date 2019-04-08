################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../bluetooth.cpp \
../leds.cpp \
../main.cpp \
../motors.cpp \
../music.cpp 

OBJS += \
./bluetooth.o \
./leds.o \
./main.o \
./motors.o \
./music.o 

CPP_DEPS += \
./bluetooth.d \
./leds.d \
./main.d \
./motors.d \
./music.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\Program Files (x86)\Arduino\hardware\arduino\avr\variants\standard" -I"C:\Users\zhuan\OneDrive for Business\Documents\NUS\Semester 4\CG2271\Labs\Lab 4\freeRTOS\freeRTOS\Source\include" -I"C:\Program Files (x86)\Arduino\hardware\arduino\avr\cores\arduino" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


