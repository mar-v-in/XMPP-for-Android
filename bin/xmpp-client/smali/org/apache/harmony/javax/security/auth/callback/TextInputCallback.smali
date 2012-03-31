.class public Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;
.super Ljava/lang/Object;
.source "TextInputCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6fe9df9e51bdec1cL


# instance fields
.field private defaultText:Ljava/lang/String;

.field private inputText:Ljava/lang/String;

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prompt"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->setPrompt(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prompt"
    .parameter "defaultText"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->setPrompt(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->setDefaultText(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private setDefaultText(Ljava/lang/String;)V
    .locals 2
    .parameter "defaultText"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.15"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->defaultText:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "prompt"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->prompt:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->inputText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/TextInputCallback;->inputText:Ljava/lang/String;

    .line 75
    return-void
.end method
