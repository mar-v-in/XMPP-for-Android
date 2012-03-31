.class public abstract Lorg/apache/harmony/javax/naming/ReferralException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "ReferralException.java"


# static fields
.field private static final serialVersionUID:J = -0x27fca9268fbdadbcL


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract getReferralContext()Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getReferralContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getReferralInfo()Ljava/lang/Object;
.end method

.method public abstract retryReferral()V
.end method

.method public abstract skipReferral()Z
.end method
