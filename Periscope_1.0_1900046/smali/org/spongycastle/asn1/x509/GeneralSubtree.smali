.class public Lorg/spongycastle/asn1/x509/GeneralSubtree;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private azt:Lorg/spongycastle/asn1/x509/GeneralName;

.field private azu:Lorg/spongycastle/asn1/ASN1Integer;

.field private azv:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azt:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 47
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 50
    :pswitch_0
    goto/16 :goto_2

    .line 52
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azu:Lorg/spongycastle/asn1/ASN1Integer;

    .line 57
    goto/16 :goto_2

    .line 59
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azv:Lorg/spongycastle/asn1/ASN1Integer;

    .line 60
    goto/16 :goto_2

    .line 62
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number for \'minimum\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azu:Lorg/spongycastle/asn1/ASN1Integer;

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number for \'maximum\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azv:Lorg/spongycastle/asn1/ASN1Integer;

    .line 86
    goto :goto_2

    .line 89
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ﾆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 2

    .line 146
    if-nez p0, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_1

    .line 153
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralSubtree;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 202
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azt:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azu:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azu:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azu:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azv:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azv:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hC()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralSubtree;->azt:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method
