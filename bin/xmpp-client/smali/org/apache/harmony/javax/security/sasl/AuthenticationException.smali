.class public Lorg/apache/harmony/javax/security/sasl/AuthenticationException;
.super Lorg/apache/harmony/javax/security/sasl/SaslException;
.source "AuthenticationException.java"


# static fields
.field private static final serialVersionUID:J = -0x31adae27dd75315fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detail"
    .parameter "ex"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
