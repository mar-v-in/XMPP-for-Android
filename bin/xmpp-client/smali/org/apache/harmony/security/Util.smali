.class public Lorg/apache/harmony/security/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 23
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 29
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
