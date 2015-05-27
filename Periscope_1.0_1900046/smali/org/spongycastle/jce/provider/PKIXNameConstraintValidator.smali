.class public Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bbA:Ljava/util/Set;

.field private bbB:Ljava/util/Set;

.field private bbC:Ljava/util/Set;

.field private bbt:Ljava/util/Set;

.field private bbu:Ljava/util/Set;

.field private bbv:Ljava/util/Set;

.field private bbw:Ljava/util/Set;

.field private bbx:Ljava/util/Set;

.field private bby:Ljava/util/Set;

.field private bbz:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    .line 44
    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1813
    if-ne p1, p2, :cond_0

    .line 1815
    const/4 v0, 0x1

    return v0

    .line 1817
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1819
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1821
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 1823
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0

    .line 1827
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ʳ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 637
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 641
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    .line 649
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    const/4 v0, 0x1

    return v0

    .line 655
    :cond_1
    invoke-direct {p0, v2, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    const/4 v0, 0x1

    return v0

    .line 659
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private ʴ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 664
    move-object v2, p2

    .line 665
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    :cond_0
    const/16 v0, 0x2e

    invoke-static {v2, v0}, Lorg/spongycastle/util/Strings;->ˊ(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 670
    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/spongycastle/util/Strings;->ˊ(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 672
    array-length v0, v4

    array-length v1, v3

    if-gt v0, v1, :cond_1

    .line 674
    const/4 v0, 0x0

    return v0

    .line 676
    :cond_1
    array-length v0, v4

    array-length v1, v3

    sub-int v5, v0, v1

    .line 677
    const/4 v6, -0x1

    :goto_0
    array-length v0, v3

    if-ge v6, v0, :cond_4

    .line 679
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 681
    add-int v0, v6, v5

    aget-object v0, v4, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    const/4 v0, 0x0

    return v0

    .line 686
    :cond_2
    aget-object v0, v3, v6

    add-int v1, v6, v5

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 688
    const/4 v0, 0x0

    return v0

    .line 677
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 691
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static ʹ([B[B)[B
    .locals 4

    .line 1648
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_1

    .line 1650
    aget-byte v0, p0, v3

    const v1, 0xffff

    and-int/2addr v0, v1

    aget-byte v1, p1, v3

    const v2, 0xffff

    and-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 1652
    return-object p0

    .line 1648
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1655
    :cond_1
    return-object p1
.end method

.method private ʼ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 1210
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    return-void

    .line 1215
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1217
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1221
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˆ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "URI is from an excluded subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_1
    goto :goto_0

    .line 1227
    :cond_2
    return-void
.end method

.method private ʽ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1258
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    if-nez p2, :cond_0

    .line 1262
    return-object p1

    .line 1264
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    return-object p1

    .line 1270
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1272
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1273
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1277
    invoke-direct {p0, v3, p2, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1278
    goto :goto_0

    .line 1280
    :cond_2
    return-object v1
.end method

.method private ˆ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1406
    invoke-static {p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ﻨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1408
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    const/4 v0, 0x1

    return v0

    .line 1417
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1419
    const/4 v0, 0x1

    return v0

    .line 1422
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ˊ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 239
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    if-nez p2, :cond_0

    .line 243
    return-object p1

    .line 245
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    return-object p1

    .line 250
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 257
    invoke-direct {p0, v3, p2, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    return-object v1
.end method

.method private ˊ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 136
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 140
    if-nez p1, :cond_0

    .line 142
    if-eqz v3, :cond_3

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 149
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 150
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v5, v0

    .line 154
    invoke-static {v3, v5}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :cond_1
    invoke-static {v5, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    :goto_2
    goto :goto_1

    .line 164
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 165
    :cond_4
    return-object v1
.end method

.method private ˊ(Ljava/util/Set;[B)Ljava/util/Set;
    .locals 4

    .line 313
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    if-nez p2, :cond_0

    .line 317
    return-object p1

    .line 319
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p1

    .line 325
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 327
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 328
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    .line 331
    invoke-direct {p0, v3, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ـ([B[B)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 332
    goto :goto_0

    .line 334
    :cond_2
    return-object v1
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 757
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 759
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 761
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 763
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 776
    invoke-direct {p0, v2, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 782
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 795
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 799
    :goto_0
    goto/16 :goto_3

    .line 801
    :cond_5
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 803
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 805
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-direct {p0, v2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 808
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    :goto_1
    goto/16 :goto_3

    .line 817
    :cond_7
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 819
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    :cond_8
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 824
    :cond_9
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 826
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 830
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 836
    :cond_b
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 838
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 842
    :cond_c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 850
    :cond_d
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 852
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 855
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 859
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    :goto_2
    goto :goto_3

    .line 864
    :cond_f
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 866
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 868
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 872
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 879
    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 881
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 885
    :cond_12
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    :goto_3
    return-void
.end method

.method private ˊ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 86
    if-nez p1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 101
    invoke-static {p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    return-void

    .line 105
    :cond_2
    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7

    .line 1775
    if-ne p1, p2, :cond_0

    .line 1777
    const/4 v0, 0x1

    return v0

    .line 1779
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1781
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1783
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1785
    const/4 v0, 0x0

    return v0

    .line 1787
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1789
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1792
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1793
    const/4 v5, 0x0

    .line 1794
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1796
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1797
    invoke-direct {p0, v3, v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1799
    const/4 v5, 0x1

    .line 1800
    goto :goto_2

    .line 1802
    :cond_4
    goto :goto_1

    .line 1803
    :cond_5
    :goto_2
    if-nez v5, :cond_6

    .line 1805
    const/4 v0, 0x0

    return v0

    .line 1807
    :cond_6
    goto :goto_0

    .line 1808
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private static ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z
    .locals 3

    .line 50
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 62
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 68
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private ˋ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .line 210
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v3

    .line 216
    if-nez p1, :cond_0

    .line 218
    if-eqz v3, :cond_1

    .line 220
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 225
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 226
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 230
    invoke-direct {p0, v3, v5, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 231
    goto :goto_1

    .line 233
    :cond_1
    :goto_2
    goto :goto_0

    .line 234
    :cond_2
    return-object v1
.end method

.method private ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 895
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 897
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 899
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 901
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 907
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 912
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 914
    invoke-direct {p0, v2, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 920
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 927
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 929
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 933
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    :goto_0
    goto/16 :goto_3

    .line 939
    :cond_5
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 941
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 943
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-direct {p0, v2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 946
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 950
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    :goto_1
    goto/16 :goto_3

    .line 955
    :cond_7
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 957
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 960
    :cond_8
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 962
    :cond_9
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 964
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 968
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 974
    :cond_b
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 976
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 980
    :cond_c
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 988
    :cond_d
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 990
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 991
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 993
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 997
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1000
    :goto_2
    goto :goto_3

    .line 1002
    :cond_f
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1004
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1006
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1010
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1017
    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1019
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1023
    :cond_12
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    :goto_3
    return-void
.end method

.method private ˋ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 482
    if-nez p1, :cond_0

    .line 484
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 489
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 493
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    return-void

    .line 497
    :cond_1
    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 501
    return-void

    .line 504
    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "Subject email address is not from a permitted subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˋ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 114
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 125
    invoke-static {p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "Subject distinguished name is from an excluded subtree"

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method

.method private ˋ(Ljava/util/Set;[B)V
    .locals 4

    .line 543
    if-nez p1, :cond_0

    .line 545
    return-void

    .line 548
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 550
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    .line 554
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ﾞ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    return-void

    .line 558
    :cond_1
    goto :goto_0

    .line 559
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 561
    return-void

    .line 563
    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "IP is not from a permitted subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˋ([B[B[B[B)[[B
    .locals 9

    .line 460
    array-length v3, p1

    .line 461
    new-array v4, v3, [B

    .line 462
    new-array v5, v3, [B

    .line 464
    new-array v6, v3, [B

    .line 465
    new-array v7, v3, [B

    .line 467
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_0

    .line 469
    aget-byte v0, p1, v8

    aget-byte v1, p2, v8

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v8

    .line 470
    aget-byte v0, p1, v8

    aget-byte v1, p2, v8

    and-int/2addr v0, v1

    aget-byte v1, p2, v8

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v8

    .line 472
    aget-byte v0, p3, v8

    aget-byte v1, p4, v8

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v8

    .line 473
    aget-byte v0, p3, v8

    aget-byte v1, p4, v8

    and-int/2addr v0, v1

    aget-byte v1, p4, v8

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v8

    .line 467
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 476
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    return-object v0
.end method

.method private ˎ(Ljava/util/Set;)Ljava/lang/String;
    .locals 4

    .line 1856
    const-string v2, ""

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1858
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᔋ([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1862
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1864
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1866
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1867
    return-object v2
.end method

.method private ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .locals 1

    .line 1581
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˎ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v3

    .line 281
    if-nez p1, :cond_0

    .line 283
    if-eqz v3, :cond_1

    .line 285
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 291
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v0

    .line 294
    invoke-direct {p0, v5, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐧ([B[B)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 295
    goto :goto_1

    .line 297
    :cond_1
    :goto_2
    goto :goto_0

    .line 298
    :cond_2
    return-object v1
.end method

.method private ˎ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 4

    .line 170
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    if-nez p2, :cond_0

    .line 174
    return-object p1

    .line 176
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    return-object p1

    .line 182
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 189
    invoke-static {p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_2
    invoke-static {v3, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_1
    goto :goto_0

    .line 204
    :cond_4
    return-object v1
.end method

.method private ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 1117
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1119
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1121
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1123
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1129
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    invoke-direct {p0, v2, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1139
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    :cond_2
    :goto_0
    goto/16 :goto_1

    .line 1146
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1148
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1150
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    invoke-direct {p0, v2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1153
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_4
    goto/16 :goto_1

    .line 1157
    :cond_5
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1159
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1162
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1164
    :cond_7
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1166
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    :cond_8
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1173
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1180
    :cond_9
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 1182
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1185
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_a
    goto :goto_1

    .line 1189
    :cond_b
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1191
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1193
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1199
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1201
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_d
    :goto_1
    return-void
.end method

.method private ˎ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 511
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    return-void

    .line 516
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 518
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 522
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "Email address is from an excluded subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    goto :goto_0

    .line 528
    :cond_2
    return-void
.end method

.method private ˎ(Ljava/util/Set;[B)V
    .locals 4

    .line 580
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    return-void

    .line 585
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 587
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    .line 591
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ﾞ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "IP is from an excluded subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    goto :goto_0

    .line 597
    :cond_2
    return-void
.end method

.method private ˏ(Ljava/util/Collection;)I
    .locals 4

    .line 1733
    if-nez p1, :cond_0

    .line 1735
    const/4 v0, 0x0

    return v0

    .line 1737
    :cond_0
    const/4 v1, 0x0

    .line 1738
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1739
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1741
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1742
    instance-of v0, v3, [B

    if-eqz v0, :cond_1

    .line 1744
    move-object v0, v3

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 1748
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1750
    :goto_1
    goto :goto_0

    .line 1751
    :cond_2
    return v1
.end method

.method private ˏ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .line 1032
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1033
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1035
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    if-nez p1, :cond_0

    .line 1039
    if-eqz v3, :cond_3

    .line 1041
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1046
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1047
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1049
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1051
    invoke-direct {p0, v5, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1055
    :cond_1
    invoke-direct {p0, v3, v5}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_2
    :goto_2
    goto :goto_1

    .line 1061
    :cond_3
    :goto_3
    goto :goto_0

    .line 1063
    :cond_4
    return-object v1
.end method

.method private ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 1287
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1289
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1291
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1293
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1295
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1299
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-direct {p0, v2, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1303
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1311
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_2
    :goto_0
    goto/16 :goto_1

    .line 1316
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1318
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1320
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1321
    invoke-direct {p0, v2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1323
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_4
    goto/16 :goto_1

    .line 1327
    :cond_5
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1329
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1332
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1334
    :cond_7
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1336
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1341
    :cond_8
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1343
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1350
    :cond_9
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 1352
    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1353
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1355
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_a
    goto :goto_1

    .line 1359
    :cond_b
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1361
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1363
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1371
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_d
    :goto_1
    return-void
.end method

.method private ˏ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 697
    if-nez p1, :cond_0

    .line 699
    return-void

    .line 702
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 704
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 709
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    :cond_1
    return-void

    .line 713
    :cond_2
    goto :goto_0

    .line 714
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 716
    return-void

    .line 718
    :cond_4
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "DNS is not from a permitted subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ͺ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 1380
    if-nez p1, :cond_0

    .line 1382
    return-void

    .line 1385
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1387
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1391
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˆ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    return-void

    .line 1395
    :cond_1
    goto :goto_0

    .line 1396
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1398
    return-void

    .line 1400
    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "URI is not from a permitted subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ՙ([B[B)[B
    .locals 4

    .line 1667
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_1

    .line 1669
    aget-byte v0, p0, v3

    const v1, 0xffff

    and-int/2addr v0, v1

    aget-byte v1, p1, v3

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1671
    return-object p0

    .line 1667
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1674
    :cond_1
    return-object p1
.end method

.method private static י([B[B)I
    .locals 1

    .line 1688
    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    const/4 v0, 0x0

    return v0

    .line 1692
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʹ([B[B)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    const/4 v0, 0x1

    return v0

    .line 1696
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private ـ([B[B)Ljava/util/Set;
    .locals 2

    .line 347
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 350
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_0
    return-object v1
.end method

.method private static ٴ([B[B)[B
    .locals 4

    .line 1709
    array-length v0, p0

    new-array v2, v0, [B

    .line 1710
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 1712
    aget-byte v0, p0, v3

    aget-byte v1, p1, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1710
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1714
    :cond_0
    return-object v2
.end method

.method private ᐝ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .line 1231
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1232
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v3

    .line 1236
    if-nez p1, :cond_0

    .line 1238
    if-eqz v3, :cond_1

    .line 1240
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1245
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1246
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1249
    invoke-direct {p0, v5, v3, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1250
    goto :goto_1

    .line 1252
    :cond_1
    :goto_2
    goto :goto_0

    .line 1253
    :cond_2
    return-object v1
.end method

.method private ᐝ(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    .line 725
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 730
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 732
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 737
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string v1, "DNS is from an excluded subtree."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_2
    goto :goto_0

    .line 743
    :cond_3
    return-void
.end method

.method private ᐧ([B[B)Ljava/util/Set;
    .locals 12

    .line 372
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 374
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ﹳ([B[B)[[B

    move-result-object v2

    .line 377
    const/4 v0, 0x0

    aget-object v3, v2, v0

    .line 378
    const/4 v0, 0x1

    aget-object v4, v2, v0

    .line 379
    const/4 v0, 0x2

    aget-object v5, v2, v0

    .line 380
    const/4 v0, 0x3

    aget-object v6, v2, v0

    .line 382
    invoke-direct {p0, v3, v4, v5, v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ([B[B[B[B)[[B

    move-result-object v7

    .line 385
    const/4 v0, 0x1

    aget-object v0, v7, v0

    const/4 v1, 0x3

    aget-object v1, v7, v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ՙ([B[B)[B

    move-result-object v9

    .line 386
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x2

    aget-object v1, v7, v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʹ([B[B)[B

    move-result-object v8

    .line 389
    invoke-static {v8, v9}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->י([B[B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 391
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 394
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x2

    aget-object v1, v7, v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ٴ([B[B)[B

    move-result-object v10

    .line 395
    invoke-static {v4, v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ٴ([B[B)[B

    move-result-object v11

    .line 396
    invoke-direct {p0, v10, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐨ([B[B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private ᐨ([B[B)[B
    .locals 4

    .line 408
    array-length v2, p1

    .line 409
    mul-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 410
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    const/4 v0, 0x0

    invoke-static {p2, v0, v3, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    return-object v3
.end method

.method private ᔋ([B)Ljava/lang/String;
    .locals 5

    .line 1839
    const-string v3, ""

    .line 1840
    const/4 v4, 0x0

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_0

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1840
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1844
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    array-length v0, p1

    div-int/lit8 v4, v0, 0x2

    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_1

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1850
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1851
    return-object v3
.end method

.method private ﹳ([B[B)[[B
    .locals 7

    .line 427
    array-length v0, p1

    div-int/lit8 v2, v0, 0x2

    .line 428
    new-array v3, v2, [B

    .line 429
    new-array v4, v2, [B

    .line 430
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    const/4 v0, 0x0

    invoke-static {p1, v2, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    new-array v5, v2, [B

    .line 434
    new-array v6, v2, [B

    .line 435
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    const/4 v0, 0x0

    invoke-static {p2, v2, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v6, v0, v1

    return-object v0
.end method

.method private static ﻨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1429
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1431
    const-string v0, "//"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1433
    const-string v0, "//"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1436
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1438
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1441
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1442
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1444
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1446
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1448
    :cond_2
    return-object v2
.end method

.method private ﾞ([B[B)Z
    .locals 7

    .line 611
    array-length v2, p1

    .line 613
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    if-eq v2, v0, :cond_0

    .line 615
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_0
    new-array v3, v2, [B

    .line 619
    const/4 v0, 0x0

    invoke-static {p2, v2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    new-array v4, v2, [B

    .line 623
    new-array v5, v2, [B

    .line 626
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 628
    aget-byte v0, p2, v6

    aget-byte v1, v3, v6

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 629
    aget-byte v0, p1, v6

    aget-byte v1, v3, v6

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    .line 626
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 632
    :cond_1
    invoke-static {v4, v5}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1756
    instance-of v0, p1, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_0

    .line 1758
    const/4 v0, 0x0

    return v0

    .line 1760
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    move-object v2, v0

    .line 1761
    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1719
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1872
    const-string v2, ""

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "permitted:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1874
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DN:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DNS:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1884
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Email:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1889
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1894
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IP:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1899
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "excluded:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1900
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DN:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1905
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DNS:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Email:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1915
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1920
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IP:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1925
    :cond_9
    return-object v2
.end method

.method protected ʻ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1068
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    if-nez p2, :cond_0

    .line 1072
    return-object p1

    .line 1074
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1076
    return-object p1

    .line 1080
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1082
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1083
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1085
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1087
    invoke-direct {p0, v3, p2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1089
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1091
    :cond_2
    invoke-direct {p0, p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1093
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1097
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1100
    :goto_1
    goto :goto_0

    .line 1102
    :cond_4
    return-object v1
.end method

.method public ʻ(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 81
    return-void
.end method

.method public ˊ(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 3

    .line 1461
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1464
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1466
    goto :goto_0

    .line 1468
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1470
    goto :goto_0

    .line 1472
    :pswitch_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐝ(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1474
    goto :goto_0

    .line 1476
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ͺ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1478
    goto :goto_0

    .line 1480
    :pswitch_4
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v2

    .line 1482
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Ljava/util/Set;[B)V

    .line 1484
    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ˊ(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    .locals 3

    .line 1612
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 1614
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1617
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    .line 1619
    goto :goto_0

    .line 1621
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʻ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    .line 1623
    goto :goto_0

    .line 1625
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbt:Ljava/util/Set;

    .line 1627
    goto :goto_0

    .line 1629
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʽ(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    .line 1631
    goto :goto_0

    .line 1633
    :pswitch_4
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    .line 1637
    :goto_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ˊ([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    .locals 6

    .line 1535
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1538
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-eq v3, v0, :cond_1

    .line 1540
    aget-object v4, p1, v3

    .line 1541
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->hC()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1542
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1544
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1538
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1549
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 1554
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1557
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˋ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbA:Ljava/util/Set;

    .line 1559
    goto :goto_2

    .line 1561
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˏ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbz:Ljava/util/Set;

    .line 1563
    goto :goto_2

    .line 1565
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    .line 1567
    goto :goto_2

    .line 1569
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐝ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbB:Ljava/util/Set;

    .line 1571
    goto :goto_2

    .line 1573
    :pswitch_4
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbC:Ljava/util/Set;

    .line 1576
    :goto_2
    :pswitch_5
    goto/16 :goto_1

    .line 1577
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ˋ(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 3

    .line 1497
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1500
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbv:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Lorg/spongycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1501
    goto :goto_0

    .line 1503
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbu:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ᐝ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1505
    goto :goto_0

    .line 1507
    :pswitch_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʻ(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1509
    goto :goto_0

    .line 1511
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbw:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ʼ(Ljava/util/Set;Ljava/lang/String;)V

    .line 1513
    goto :goto_0

    .line 1515
    :pswitch_4
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralName;->hw()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v2

    .line 1517
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bbx:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˎ(Ljava/util/Set;[B)V

    .line 1519
    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ᐝ(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->bby:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->ˊ(Ljava/util/Set;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 75
    return-void
.end method
