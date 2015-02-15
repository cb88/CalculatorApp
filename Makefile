all:
	mkdir -p build
	javac -d ./build *.java
	jar cvfe CalculatorApp.jar CalculatorApp -C build .
clean:
	if [ -e "CalculatorApp.jar" ] ; then rm CalculatorApp.jar ; fi; 
	rm -rf build
