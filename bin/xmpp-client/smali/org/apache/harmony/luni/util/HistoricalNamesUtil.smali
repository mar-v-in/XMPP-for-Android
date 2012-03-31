.class public Lorg/apache/harmony/luni/util/HistoricalNamesUtil;
.super Ljava/lang/Object;
.source "HistoricalNamesUtil.java"


# static fields
.field private static historicalNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    .line 25
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "Big5-HKSCS"

    const-string v2, "Big5_HKSCS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "EUC-JP"

    const-string v2, "EUC_JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "EUC-KR"

    const-string v2, "EUC_KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "GB2312"

    const-string v2, "EUC_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM-Thai"

    const-string v2, "Cp838"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM00858"

    const-string v2, "Cp858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM037"

    const-string v2, "Cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM1026"

    const-string v2, "Cp1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM273"

    const-string v2, "Cp273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM277"

    const-string v2, "Cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM278"

    const-string v2, "Cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM280"

    const-string v2, "Cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM284"

    const-string v2, "Cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM285"

    const-string v2, "Cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM297"

    const-string v2, "Cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM420"

    const-string v2, "Cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM424"

    const-string v2, "Cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM437"

    const-string v2, "Cp437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM500"

    const-string v2, "Cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM775"

    const-string v2, "Cp775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM850"

    const-string v2, "Cp850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM852"

    const-string v2, "Cp852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM855"

    const-string v2, "Cp855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM857"

    const-string v2, "Cp857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM860"

    const-string v2, "Cp860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM861"

    const-string v2, "Cp861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM862"

    const-string v2, "Cp862"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM863"

    const-string v2, "Cp863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM864"

    const-string v2, "Cp864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM865"

    const-string v2, "Cp865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM866"

    const-string v2, "Cp866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM868"

    const-string v2, "Cp868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM869"

    const-string v2, "Cp869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM870"

    const-string v2, "Cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM871"

    const-string v2, "Cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "IBM918"

    const-string v2, "Cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-JP"

    const-string v2, "ISO2022JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-13"

    const-string v2, "ISO8859_13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-15"

    const-string v2, "ISO8859_15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "KOI8-R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "Shift_JIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "TIS-620"

    const-string v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-16BE"

    const-string v2, "UnicodeBigUnmarked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-16LE"

    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1250"

    const-string v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1251"

    const-string v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1252"

    const-string v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1253"

    const-string v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1254"

    const-string v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1255"

    const-string v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1256"

    const-string v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1257"

    const-string v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-1258"

    const-string v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "windows-31j"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-Big5-Solaris"

    const-string v2, "Big5_Solaris"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-euc-jp-linux"

    const-string v2, "EUC_JP_LINUX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-EUC-TW"

    const-string v2, "EUC_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-eucJP-Open"

    const-string v2, "EUC_JP_Solaris"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1006"

    const-string v2, "Cp1006"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1025"

    const-string v2, "Cp1025"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1046"

    const-string v2, "Cp1046"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1097"

    const-string v2, "Cp1097"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1098"

    const-string v2, "Cp1098"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1112"

    const-string v2, "Cp1112"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1122"

    const-string v2, "Cp1122"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1123"

    const-string v2, "Cp1123"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1124"

    const-string v2, "Cp1124"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1381"

    const-string v2, "Cp1381"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM1383"

    const-string v2, "Cp1383"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM33722"

    const-string v2, "Cp33722"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM737"

    const-string v2, "Cp737"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM856"

    const-string v2, "Cp856"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM874"

    const-string v2, "Cp874"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM875"

    const-string v2, "Cp875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM921"

    const-string v2, "Cp921"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM922"

    const-string v2, "Cp922"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM930"

    const-string v2, "Cp930"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM933"

    const-string v2, "Cp933"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM935"

    const-string v2, "Cp935"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM937"

    const-string v2, "Cp937"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM939"

    const-string v2, "Cp939"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM942"

    const-string v2, "Cp942"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM942C"

    const-string v2, "Cp942C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM943"

    const-string v2, "Cp943"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM943C"

    const-string v2, "Cp943C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM948"

    const-string v2, "Cp948"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM949"

    const-string v2, "Cp949"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM949C"

    const-string v2, "Cp949C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM950"

    const-string v2, "Cp950"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM964"

    const-string v2, "Cp964"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-IBM970"

    const-string v2, "Cp970"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISCII91"

    const-string v2, "ISCII91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISO-2022-CN-CNS"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-ISO-2022-CN-GB"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-JISAutoDetect"

    const-string v2, "JISAutoDetect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacArabic"

    const-string v2, "MacArabic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCentralEurope"

    const-string v2, "MacCentralEurope"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCroatian"

    const-string v2, "MacCroatian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacCyrillic"

    const-string v2, "MacCyrillic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacDingbat"

    const-string v2, "MacDingbat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacGreek"

    const-string v2, "MacGreek"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacHebrew"

    const-string v2, "MacHebrew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacIceland"

    const-string v2, "MacIceland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacRoman"

    const-string v2, "MacRoman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacRomania"

    const-string v2, "MacRomania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacSymbol"

    const-string v2, "MacSymbol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacThai"

    const-string v2, "MacThai"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacTurkish"

    const-string v2, "MacTurkish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MacUkraine"

    const-string v2, "MacUkraine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-MS950-HKSCS"

    const-string v2, "MS950_HKSCS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-mswin-936"

    const-string v2, "MS936"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-PCK"

    const-string v2, "PCK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-874"

    const-string v2, "MS874"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-949"

    const-string v2, "MS949"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    const-string v1, "x-windows-950"

    const-string v2, "MS950"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistoricalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 167
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    sget-object v0, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->historicalNames:Ljava/util/HashMap;

    .line 168
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0
.end method
