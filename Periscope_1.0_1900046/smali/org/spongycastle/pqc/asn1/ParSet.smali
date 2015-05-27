.class public Lorg/spongycastle/pqc/asn1/ParSet;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private bdK:I

.field private bed:[I

.field private bee:[I

.field private bef:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bdK:I

    .line 79
    iput-object p2, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bed:[I

    .line 80
    iput-object p3, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bee:[I

    .line 81
    iput-object p4, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bef:[I

    .line 82
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .line 120
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bed:[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bed:[I

    aget v1, v1, v6

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bee:[I

    aget v1, v1, v6

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bef:[I

    aget v1, v1, v6

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->bdK:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
