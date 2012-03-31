.class public Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "SchemaViolationException.java"


# static fields
.field private static final serialVersionUID:J = -0x2a3682d04ef8413fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
