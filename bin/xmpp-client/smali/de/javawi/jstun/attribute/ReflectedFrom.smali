.class public Lde/javawi/jstun/attribute/ReflectedFrom;
.super Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.source "ReflectedFrom.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;-><init>(Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 26
    return-void
.end method

.method public static parse([B)Lde/javawi/jstun/attribute/ReflectedFrom;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/javawi/jstun/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lde/javawi/jstun/attribute/ReflectedFrom;

    invoke-direct {v0}, Lde/javawi/jstun/attribute/ReflectedFrom;-><init>()V

    .line 20
    .local v0, result:Lde/javawi/jstun/attribute/ReflectedFrom;
    invoke-static {v0, p0}, Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;->parse(Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lde/javawi/jstun/attribute/MappedResponseChangedSourceAddressReflectedFrom;

    .line 21
    return-object v0
.end method
