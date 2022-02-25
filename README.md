# currency_converter

A brief note on the project.

## What You Should Know

This project is developed with the seperation of UI and businessLogic strictly
enforced.

This comforms to the Model View View-Model architecture.
The numenclatures are a bit different and the structure of project was deliberate
in order to ease unit testing.

This project emcompases the use of four different layers namely.
- Presentation Layer - comprises the ui and inputs.
- Application Layer - comprises the state management (bloc) and 
   is a bridge to the presentation layer.
- Domain Layer - comprises entities and classes that makes sense to the application
   such as application errors and warnings
- Infrastructure Layer - comprises dto's and classes that handle fetching of data.

- Notes
Communication between domain layer and Infrastructure layer is highly decoupled and
facilitated through the currencyConverterRepository and the ICurrencyConverterRepository,
using dependency inversion.

Dependency injection is provided by the injectible, getit and code generation packages.
dependencies are injected seamlessly which reduces coupling.

The freezed package provides support for data classes and sealed classes.
because bloc is a non-mutable state management tool, it benefit greatly from freezed.
freezed is also used for json serialization of dto objects.

A flow of this application looks like this.
CurrencyCalculatorRemoteDataSource ->*CurrencyCalculatorDto*-> CurrencyCalculatorRepository ->*implements*-> 
ICurrencyCalculatorRepository -> CurrencyCalculatorBloc -> CurrencyCalculator(Widget).

this is done purposely to imporve unit testing for each of the components and seperate UI from business logic.

## Business Logic
All exchange rates as relate to the EUR (common denominator) are gotten once at the start of the application.
Then exchange rate between the currencies can be calculated using 
(convertFromCurrencyRate/convertToCurrencyRate) * convertFromValue.

Historical Rates for several different past dates are also gotten at the start of the application. this is used
to make the calculations for the graph chart.

This is done to minimize network calls.




