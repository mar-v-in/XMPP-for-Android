.class public Lorg/apache/harmony/javax/naming/directory/InvalidAttributeValueException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "InvalidAttributeValueException.java"


# static fields
.field private static final serialVersionUID:J = 0x7903d78afec63b03L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method
