.class public Lorg/spongycastle/asn1/pkcs/SignedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private afK:Lorg/spongycastle/asn1/ASN1Set;

.field private afM:Lorg/spongycastle/asn1/ASN1Set;

.field private afN:Lorg/spongycastle/asn1/ASN1Set;

.field private afr:Lorg/spongycastle/asn1/ASN1Set;

.field private asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afK:Lorg/spongycastle/asn1/ASN1Set;

    .line 54
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 55
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    .line 56
    iput-object p5, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    .line 57
    iput-object p6, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afN:Lorg/spongycastle/asn1/ASN1Set;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 66
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afK:Lorg/spongycastle/asn1/ASN1Set;

    .line 67
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->ᔋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 69
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object v4, v0

    .line 77
    instance-of v0, v4, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v5, v0

    .line 81
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 84
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/spongycastle/asn1/ASN1Set;->ʻ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    .line 85
    goto :goto_2

    .line 87
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/spongycastle/asn1/ASN1Set;->ʻ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    .line 88
    goto :goto_2

    .line 90
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_2
    goto :goto_3

    .line 95
    :cond_0
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afN:Lorg/spongycastle/asn1/ASN1Set;

    .line 97
    :goto_3
    goto/16 :goto_0

    .line 98
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static І(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;
    .locals 2

    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 147
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afK:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afN:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public go()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public gp()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method
