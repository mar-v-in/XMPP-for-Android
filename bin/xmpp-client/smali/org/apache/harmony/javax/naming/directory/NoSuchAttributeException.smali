.class public Lorg/apache/harmony/javax/naming/directory/NoSuchAttributeException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "NoSuchAttributeException.java"


# static fields
.field private static final serialVersionUID:J = 0x431e6668495bfb09L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
