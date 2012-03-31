.class public Lorg/xmlpull/mxp1/MXParserFactory;
.super Lorg/xmlpull/v1/XmlPullParserFactory;
.source "MXParserFactory.java"


# static fields
.field protected static stringCachedParserAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 32
    .local v3, pp:Lorg/xmlpull/v1/XmlPullParser;
    sget-boolean v6, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    if-eqz v6, :cond_0

    .line 34
    :try_start_0
    new-instance v4, Lorg/xmlpull/mxp1/MXParserCachingStrings;

    invoke-direct {v4}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #pp:Lorg/xmlpull/v1/XmlPullParser;
    .local v4, pp:Lorg/xmlpull/v1/XmlPullParser;
    move-object v3, v4

    .line 39
    .end local v4           #pp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #pp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 40
    new-instance v3, Lorg/xmlpull/mxp1/MXParser;

    .end local v3           #pp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v3}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 42
    .restart local v3       #pp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3

    .line 49
    return-object v3

    .line 35
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 36
    .local v1, ex:Ljava/lang/Exception;
    const/4 v6, 0x0

    sput-boolean v6, Lorg/xmlpull/mxp1/MXParserFactory;->stringCachedParserAvailable:Z

    goto :goto_0

    .line 43
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 45
    .local v5, value:Ljava/lang/Boolean;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    const/4 v6, 0x1

    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
