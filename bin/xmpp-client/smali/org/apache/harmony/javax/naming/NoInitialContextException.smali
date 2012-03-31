.class public Lorg/apache/harmony/javax/naming/NoInitialContextException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "NoInitialContextException.java"


# static fields
.field private static final serialVersionUID:J = -0x2f60043f2b36317fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
