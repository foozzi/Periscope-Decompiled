.class public Lorg/spongycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

.field private aaU:Z

.field private aaV:I


# direct methods
.method constructor <init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaU:Z

    .line 18
    iput p2, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaV:I

    .line 19
    iput-object p3, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 20
    return-void
.end method


# virtual methods
.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaU:Z

    iget v2, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->aaV:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1StreamParser;->ˋ(ZI)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 61
    :catch_0
    move-exception v2

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
