.class public Lorg/spongycastle/asn1/x509/TBSCertList;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/x509/TBSCertList$1;,
        Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field aAB:Lorg/spongycastle/asn1/x509/Time;

.field aAC:Lorg/spongycastle/asn1/x509/Time;

.field aAD:Lorg/spongycastle/asn1/ASN1Sequence;

.field aAE:Lorg/spongycastle/asn1/x509/Extensions;

.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field aps:Lorg/spongycastle/asn1/x500/X500Name;

.field ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 171
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 174
    :cond_0
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

    .line 177
    :cond_1
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 181
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 188
    :goto_0
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 189
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    .line 190
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAB:Lorg/spongycastle/asn1/x509/Time;

    .line 192
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_4

    .line 197
    :cond_3
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Time;->ᒃ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAC:Lorg/spongycastle/asn1/x509/Time;

    .line 200
    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v0, :cond_5

    .line 203
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAD:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 206
    :cond_5
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->ﺗ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAE:Lorg/spongycastle/asn1/x509/Extensions;

    .line 211
    :cond_6
    return-void
.end method

.method public static נ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 2

    .line 157
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/TBSCertList;

    return-object v0

    .line 161
    :cond_0
    if-eqz p0, :cond_1

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 166
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 281
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 288
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 290
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAB:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 291
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAC:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAC:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAD:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAD:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 302
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAE:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_3

    .line 304
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAE:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 307
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gX()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAE:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public hX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->ayg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public he()I
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hf()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aps:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hn()Ljava/util/Enumeration;
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAD:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList;Lorg/spongycastle/asn1/x509/TBSCertList$1;)V

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAD:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public ho()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAB:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public hp()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertList;->aAC:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method
