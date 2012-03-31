.class public Lorg/apache/harmony/auth/internal/nls/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field private static bundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    .line 53
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 54
    const-string v2, "org.apache.harmony.auth.internal.nls.messages"

    .line 53
    invoke-static {v1, v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, e:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 55
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0       #e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "format"
    .parameter "args"

    .prologue
    const/16 v7, 0x7b

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 78
    array-length v6, p1

    mul-int/lit8 v6, v6, 0x14

    add-int/2addr v5, v6

    .line 77
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, answer:Ljava/lang/StringBuilder;
    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    .line 80
    .local v1, argStrings:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-lt v3, v5, :cond_1

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, lastI:I
    const/4 v5, 0x0

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_1
    if-gez v3, :cond_3

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 81
    .end local v4           #lastI:I
    :cond_1
    aget-object v5, p1, v3

    if-nez v5, :cond_2

    .line 82
    const-string v5, "<null>"

    aput-object v5, v1, v3

    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_2

    .line 90
    .restart local v4       #lastI:I
    :cond_3
    if-eqz v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    .line 92
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    .line 93
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v4, v3, 0x1

    .line 88
    :goto_3
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    if-le v3, v5, :cond_6

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 105
    :cond_6
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    .line 104
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v2, v5

    .line 106
    .local v2, argnum:I
    if-ltz v2, :cond_7

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_8

    .line 108
    :cond_7
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    .line 112
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    array-length v5, v1

    if-lt v2, v5, :cond_9

    .line 114
    const-string v5, "<missing argument>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_4
    add-int/lit8 v4, v3, 0x3

    goto :goto_3

    .line 116
    :cond_9
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "msg"

    .prologue
    .line 137
    sget-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    .line 143
    .end local p0
    .local v0, e:Ljava/util/MissingResourceException;
    :goto_0
    return-object p0

    .line 141
    .end local v0           #e:Ljava/util/MissingResourceException;
    .restart local p0
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 211
    move-object v0, p0

    .line 213
    .local v0, format:Ljava/lang/String;
    sget-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    sget-object v1, Lorg/apache/harmony/auth/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/harmony/auth/internal/nls/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 2
    .parameter "locale"
    .parameter "resource"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, loader:Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v1, Lorg/apache/harmony/auth/internal/nls/Messages$1;

    invoke-direct {v1, p1, p0, v0}, Lorg/apache/harmony/auth/internal/nls/Messages$1;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v1

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method
