.class public Lorg/spongycastle/asn1/DLSet;
.super Lorg/spongycastle/asn1/ASN1Set;
.source ""


# instance fields
.field private abm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Set;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    .line 82
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Set;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    .line 91
    return-void
.end method

.method private fk()I
    .locals 4

    .line 96
    iget v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    if-gez v0, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DLSet;->eT()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 104
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eP()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    add-int/2addr v1, v0

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    .line 110
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DLSet;->abm:I

    return v0
.end method


# virtual methods
.method ey()I
    .locals 3

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/asn1/DLSet;->fk()I

    move-result v2

    .line 118
    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 133
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->eR()Lorg/spongycastle/asn1/ASN1OutputStream;

    move-result-object v1

    .line 134
    invoke-direct {p0}, Lorg/spongycastle/asn1/DLSet;->fk()I

    move-result v2

    .line 136
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 137
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 139
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DLSet;->eT()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 143
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method
