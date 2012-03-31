.class public Lorg/apache/harmony/javax/naming/StringRefAddr;
.super Lorg/apache/harmony/javax/naming/RefAddr;
.source "StringRefAddr.java"


# static fields
.field private static final serialVersionUID:J = -0x7bb40bc31eee2337L


# instance fields
.field private final contents:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "address"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/RefAddr;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/StringRefAddr;->contents:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/StringRefAddr;->contents:Ljava/lang/String;

    return-object v0
.end method
