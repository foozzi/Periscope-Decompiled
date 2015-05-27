.class public Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final asP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 72
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 74
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v3, v0

    .line 76
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 79
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 80
    goto :goto_2

    .line 82
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 83
    goto :goto_2

    .line 85
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    goto :goto_2

    .line 88
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 58
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    return-void
.end method

.method public static ﹼ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;
    .locals 2

    .line 29
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 136
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ga()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public gb()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public gd()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAESOAEPparams;->asM:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
