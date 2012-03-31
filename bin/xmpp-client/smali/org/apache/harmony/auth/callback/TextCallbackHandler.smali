.class public Lorg/apache/harmony/auth/callback/TextCallbackHandler;
.super Ljava/lang/Object;
.source "TextCallbackHandler.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->in:Ljava/io/InputStream;

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->out:Ljava/io/PrintStream;

    .line 33
    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 8
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 41
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 59
    return-void

    .line 41
    :cond_0
    aget-object v1, p1, v4

    .line 42
    .local v1, callback:Ljavax/security/auth/callback/Callback;
    instance-of v6, v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 43
    check-cast v2, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 44
    .local v2, nameCallback:Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    iget-object v6, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getPrompt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/io/BufferedReader;

    .line 46
    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 45
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 41
    .end local v2           #nameCallback:Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    .end local v0           #br:Ljava/io/BufferedReader;
    :cond_1
    instance-of v6, v1, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v6, :cond_2

    move-object v3, v1

    .line 49
    check-cast v3, Ljavax/security/auth/callback/PasswordCallback;

    .line 50
    .local v3, passwordCallback:Ljavax/security/auth/callback/PasswordCallback;
    iget-object v6, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljavax/security/auth/callback/PasswordCallback;->getPrompt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/BufferedReader;

    .line 53
    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lorg/apache/harmony/auth/callback/TextCallbackHandler;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 52
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    .restart local v0       #br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 56
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #passwordCallback:Ljavax/security/auth/callback/PasswordCallback;
    :cond_2
    new-instance v4, Ljavax/security/auth/callback/UnsupportedCallbackException;

    invoke-direct {v4, v1}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;)V

    throw v4
.end method
