.class public Lorg/apache/harmony/luni/util/Msg;
.super Ljava/lang/Object;
.source "Msg.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static bundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;

    .line 50
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 51
    const-string v2, "org.apache.harmony.luni.util.ExternalMessages"

    .line 50
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, e:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 52
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0       #e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 65
    sget-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    .line 71
    .local v0, e:Ljava/util/MissingResourceException;
    :goto_0
    return-object p0

    .line 69
    .end local v0           #e:Ljava/util/MissingResourceException;
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .restart local v0       #e:Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 139
    move-object v0, p0

    .line 141
    .local v0, format:Ljava/lang/String;
    sget-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    sget-object v1, Lorg/apache/harmony/luni/util/Msg;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/harmony/luni/internal/nls/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method
