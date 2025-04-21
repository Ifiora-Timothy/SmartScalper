#include <Trade\Trade.mqh>

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
    string symbol = _Symbol;
    double price = SymbolInfoDouble(symbol, SYMBOL_BID);
    double balance = AccountInfoDouble(ACCOUNT_BALANCE);
    ENUM_TIMEFRAMES tf = Period();

    Print("📈 Symbol: ", symbol);
    Print("💰 Current BID Price: ", price);
    Print("🏦 Account Balance: ", balance);
    Print("🕒 Current Timeframe: ", EnumToString(tf));
}
