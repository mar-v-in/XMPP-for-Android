.class public final Lorg/apache/harmony/javax/naming/ldap/ManageReferralControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "ManageReferralControl.java"


# static fields
.field public static final OID:Ljava/lang/String; = "2.16.840.1.113730.3.4.2"

.field private static final serialVersionUID:J = 0x29e1393d287c8d66L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "2.16.840.1.113730.3.4.2"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "criticality"

    .prologue
    .line 34
    const-string v0, "2.16.840.1.113730.3.4.2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 35
    return-void
.end method
