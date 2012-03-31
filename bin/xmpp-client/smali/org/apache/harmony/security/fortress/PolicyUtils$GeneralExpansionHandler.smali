.class public interface abstract Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/PolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeneralExpansionHandler"
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation
.end method
