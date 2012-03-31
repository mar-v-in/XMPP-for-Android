.class public abstract Lorg/apache/harmony/javax/naming/ldap/LdapReferralException;
.super Lorg/apache/harmony/javax/naming/ReferralException;
.source "LdapReferralException.java"


# static fields
.field private static final serialVersionUID:J = -0x17297419f5d65f14L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/ReferralException;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/ReferralException;-><init>(Ljava/lang/String;)V

    .line 54
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

.method public abstract getReferralContext(Ljava/util/Hashtable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;[",
            "Lorg/apache/harmony/javax/naming/ldap/Control;",
            ")",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
