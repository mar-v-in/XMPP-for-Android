.class public Lorg/apache/harmony/javax/security/auth/callback/TextOutputCallback;
.super Ljava/lang/Object;
.source "TextOutputCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field public static final ERROR:I = 0x2

.field public static final INFORMATION:I = 0x0

.field public static final WARNING:I = 0x1

.field private static final serialVersionUID:J = 0x177251917c1bd1feL


# instance fields
.field private final message:Ljava/lang/String;

.field private final messageType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "messageType"
    .parameter "message"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1F"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/TextOutputCallback;->messageType:I

    .line 48
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/callback/TextOutputCallback;->message:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/TextOutputCallback;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/TextOutputCallback;->messageType:I

    return v0
.end method
