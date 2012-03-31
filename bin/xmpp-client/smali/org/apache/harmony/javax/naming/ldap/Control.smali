.class public interface abstract Lorg/apache/harmony/javax/naming/ldap/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CRITICAL:Z = true

.field public static final NONCRITICAL:Z


# virtual methods
.method public abstract getEncodedValue()[B
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract isCritical()Z
.end method
