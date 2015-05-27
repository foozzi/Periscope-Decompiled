.class Lorg/spongycastle/asn1/eac/Flags$StringJoiner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/eac/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringJoiner"
.end annotation


# instance fields
.field ajH:Ljava/lang/StringBuffer;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->ajH:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
