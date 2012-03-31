.class public Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;
.super Ljava/util/EventObject;
.source "UnsolicitedNotificationEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x2110b526b938c9b9L


# instance fields
.field private final notice:Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;)V
    .locals 0
    .parameter "o"
    .parameter "un"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 53
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;->notice:Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatch(Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;)V
    .locals 0
    .parameter "unl"

    .prologue
    .line 64
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;->notificationReceived(Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;)V

    .line 65
    return-void
.end method

.method public getNotification()Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;->notice:Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;

    return-object v0
.end method
