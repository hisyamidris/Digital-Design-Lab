################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11.c \
../src/main.c 

S_SRCS += \
../src/fibonacci.s 

OBJS += \
./src/cr_startup_lpc11.o \
./src/fibonacci.o \
./src/main.o 

C_DEPS += \
./src/cr_startup_lpc11.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__USE_CMSIS -DDEBUG -D__CODE_RED -I../cmsis -I../config -I../driver -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__  -DDEBUG -D__CODE_RED -I../cmsis -I../config -I../driver -g3 -mcpu=cortex-m0 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


