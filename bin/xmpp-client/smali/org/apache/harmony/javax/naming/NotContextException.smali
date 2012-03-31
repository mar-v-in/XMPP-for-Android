.class public Lorg/apache/harmony/javax/naming/NotContextException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "NotContextException.java"


# static fields
.field private static final serialVersionUID:J = 0xbcaed718bc12e01L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
