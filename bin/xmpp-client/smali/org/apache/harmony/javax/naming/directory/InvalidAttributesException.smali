.class public Lorg/apache/harmony/javax/naming/directory/InvalidAttributesException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "InvalidAttributesException.java"


# static fields
.field private static final serialVersionUID:J = 0x24301a12642c8465L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
