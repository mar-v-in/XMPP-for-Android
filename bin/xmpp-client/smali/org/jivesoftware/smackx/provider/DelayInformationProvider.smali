.class public Lorg/jivesoftware/smackx/provider/DelayInformationProvider;
.super Ljava/lang/Object;
.source "DelayInformationProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# static fields
.field private static final XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

.field private static final XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

.field private static formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 56
    const-string v1, "yyyyMd\'T\'HH:mm:ss"

    .line 55
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    .line 58
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 66
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 65
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    .line 68
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    .line 69
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    .line 77
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+T\\d+:\\d+:\\d+$"

    .line 78
    sget-object v2, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+-\\d+-\\d+T\\d+:\\d+:\\d+\\.\\d+Z$"

    .line 80
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+-\\d+-\\d+T\\d+:\\d+:\\d+Z$"

    .line 82
    sget-object v2, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
    .locals 1
    .parameter "now"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, dates:Ljava/util/List;,"Ljava/util/List<Ljava/util/Calendar;>;"
    new-instance v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;-><init>(Lorg/jivesoftware/smackx/provider/DelayInformationProvider;Ljava/util/Calendar;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method private varargs filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;
    .locals 5
    .parameter "now"
    .parameter "dates"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/util/Calendar;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 120
    return-object v1

    .line 114
    :cond_0
    aget-object v0, p2, v2

    .line 115
    .local v0, calendar:Ljava/util/Calendar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleDateWithMissingLeadingZeros(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .parameter "stampString"

    .prologue
    .line 132
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 133
    .local v1, now:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 134
    .local v2, xep91:Ljava/util/Calendar;
    const/4 v3, 0x0

    .line 137
    .local v3, xep91Fallback:Ljava/util/Calendar;
    sget-object v4, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    .line 136
    invoke-direct {p0, p1, v4}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v2

    .line 139
    sget-object v4, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    .line 138
    invoke-direct {p0, p1, v4}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v3

    .line 141
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Calendar;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    .line 142
    aput-object v3, v4, v5

    .line 141
    invoke-direct {p0, v1, v4}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, dates:Ljava/util/List;,"Ljava/util/List<Ljava/util/Calendar;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 147
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .locals 2
    .parameter "stampString"
    .parameter "dateFormat"

    .prologue
    .line 208
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 210
    invoke-virtual {p2}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit p2

    .line 213
    :goto_0
    return-object v1

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const-string v7, ""

    const-string v8, "stamp"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, stampString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 155
    .local v5, stamp:Ljava/util/Date;
    const/4 v2, 0x0

    .line 157
    .local v2, format:Ljava/text/DateFormat;
    sget-object v7, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 177
    :goto_0
    sget-object v7, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    if-ne v2, v7, :cond_1

    .line 178
    const-string v7, "T"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    .line 179
    invoke-direct {p0, v6}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->handleDateWithMissingLeadingZeros(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 187
    :cond_1
    if-nez v5, :cond_2

    .line 188
    new-instance v5, Ljava/util/Date;

    .end local v5           #stamp:Ljava/util/Date;
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 191
    .restart local v5       #stamp:Ljava/util/Date;
    :cond_2
    new-instance v1, Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-direct {v1, v5}, Lorg/jivesoftware/smackx/packet/DelayInformation;-><init>(Ljava/util/Date;)V

    .line 192
    .local v1, delayInformation:Lorg/jivesoftware/smackx/packet/DelayInformation;
    const-string v7, ""

    const-string v8, "from"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setFrom(Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, reason:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    .line 201
    :cond_3
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setReason(Ljava/lang/String;)V

    .line 203
    return-object v1

    .line 157
    .end local v1           #delayInformation:Lorg/jivesoftware/smackx/packet/DelayInformation;
    .end local v3           #reason:Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    .local v4, regexp:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    :try_start_0
    sget-object v7, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/text/DateFormat;

    move-object v2, v0

    .line 161
    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 161
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v7

    goto :goto_0
.end method
