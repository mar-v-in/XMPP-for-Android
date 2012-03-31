.class public interface abstract Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Checker;
.super Ljava/lang/Object;
.source "TransportResolverListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Checker"
.end annotation


# virtual methods
.method public abstract candidateChecked(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Z)V
.end method

.method public abstract candidateChecking(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
.end method
