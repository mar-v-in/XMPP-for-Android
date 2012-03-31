.class public Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.super Ljava/lang/Object;
.source "BasicControl.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/Control;


# static fields
.field private static final serialVersionUID:J = -0x3ac1dc727033a347L


# instance fields
.field protected criticality:Z

.field protected id:Ljava/lang/String;

.field protected value:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->criticality:Z

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 1
    .parameter "id"
    .parameter "criticality"
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->criticality:Z

    .line 38
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->id:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->criticality:Z

    .line 40
    iput-object p3, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->value:[B

    .line 41
    return-void
.end method


# virtual methods
.method public getEncodedValue()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->value:[B

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isCritical()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/BasicControl;->criticality:Z

    return v0
.end method
