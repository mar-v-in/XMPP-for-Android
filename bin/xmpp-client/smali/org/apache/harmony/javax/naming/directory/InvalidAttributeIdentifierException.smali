.class public Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "InvalidAttributeIdentifierException.java"


# static fields
.field private static final serialVersionUID:J = -0x7d69971a41b5fa73L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
