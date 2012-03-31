.class public Lde/javawi/jstun/attribute/UnknownMessageAttributeException;
.super Lde/javawi/jstun/attribute/MessageAttributeParsingException;
.source "UnknownMessageAttributeException.java"


# static fields
.field private static final serialVersionUID:J = 0x4a98860ca5c4a083L


# instance fields
.field private final type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .parameter "mesg"
    .parameter "type"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lde/javawi/jstun/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lde/javawi/jstun/attribute/UnknownMessageAttributeException;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 15
    return-void
.end method


# virtual methods
.method public getType()Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lde/javawi/jstun/attribute/UnknownMessageAttributeException;->type:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method
