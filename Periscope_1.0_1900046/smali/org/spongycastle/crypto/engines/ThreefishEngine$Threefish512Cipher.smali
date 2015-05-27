.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Threefish512Cipher"
.end annotation


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    .line 691
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 692
    return-void
.end method


# virtual methods
.method public ˋ([J[J)V
    .locals 28

    .line 696
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->aMi:[J

    .line 697
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->aMh:[J

    .line 698
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jM()[I

    move-result-object v7

    .line 699
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v8

    .line 702
    array-length v0, v5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 706
    :cond_0
    array-length v0, v6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 714
    :cond_1
    const/4 v0, 0x0

    aget-wide v9, p1, v0

    .line 715
    const/4 v0, 0x1

    aget-wide v11, p1, v0

    .line 716
    const/4 v0, 0x2

    aget-wide v13, p1, v0

    .line 717
    const/4 v0, 0x3

    aget-wide v15, p1, v0

    .line 718
    const/4 v0, 0x4

    aget-wide v17, p1, v0

    .line 719
    const/4 v0, 0x5

    aget-wide v19, p1, v0

    .line 720
    const/4 v0, 0x6

    aget-wide v21, p1, v0

    .line 721
    const/4 v0, 0x7

    aget-wide v23, p1, v0

    .line 726
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 727
    const/4 v0, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 728
    const/4 v0, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 729
    const/4 v0, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 730
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 731
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 732
    const/4 v0, 0x6

    aget-wide v0, v5, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 733
    const/4 v0, 0x7

    aget-wide v0, v5, v0

    add-long v23, v23, v0

    .line 746
    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 748
    aget v26, v7, v25

    .line 749
    aget v27, v8, v25

    .line 757
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x2e

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 758
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x24

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 759
    add-long v0, v17, v19

    move-wide/from16 v17, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x13

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 760
    add-long v0, v21, v23

    move-wide/from16 v21, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x25

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 762
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0x21

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 763
    add-long v0, v17, v23

    move-wide/from16 v17, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x1b

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 764
    add-long v0, v21, v19

    move-wide/from16 v21, v0

    move-wide/from16 v2, v19

    const/16 v4, 0xe

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 765
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 767
    add-long v0, v17, v11

    move-wide/from16 v17, v0

    const/16 v2, 0x11

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 768
    add-long v0, v21, v15

    move-wide/from16 v21, v0

    move-wide v2, v15

    const/16 v4, 0x31

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 769
    add-long v0, v9, v19

    move-wide v9, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x24

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 770
    add-long v0, v13, v23

    move-wide v13, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x27

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 772
    add-long v0, v21, v11

    move-wide/from16 v21, v0

    const/16 v2, 0x2c

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 773
    add-long v0, v9, v23

    move-wide v9, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 774
    add-long v0, v13, v19

    move-wide v13, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x36

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 775
    add-long v0, v17, v15

    move-wide/from16 v17, v0

    move-wide v2, v15

    const/16 v4, 0x38

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 780
    aget-wide v0, v5, v26

    add-long/2addr v9, v0

    .line 781
    add-int/lit8 v0, v26, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 782
    add-int/lit8 v0, v26, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 783
    add-int/lit8 v0, v26, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 784
    add-int/lit8 v0, v26, 0x4

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 785
    add-int/lit8 v0, v26, 0x5

    aget-wide v0, v5, v0

    aget-wide v2, v6, v27

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 786
    add-int/lit8 v0, v26, 0x6

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 787
    add-int/lit8 v0, v26, 0x7

    aget-wide v0, v5, v0

    move/from16 v2, v25

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 792
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x27

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 793
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 794
    add-long v0, v17, v19

    move-wide/from16 v17, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x22

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 795
    add-long v0, v21, v23

    move-wide/from16 v21, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x18

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 797
    add-long v0, v13, v11

    move-wide v13, v0

    const/16 v2, 0xd

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 798
    add-long v0, v17, v23

    move-wide/from16 v17, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x32

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 799
    add-long v0, v21, v19

    move-wide/from16 v21, v0

    move-wide/from16 v2, v19

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 800
    add-long v0, v9, v15

    move-wide v9, v0

    move-wide v2, v15

    const/16 v4, 0x11

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 802
    add-long v0, v17, v11

    move-wide/from16 v17, v0

    const/16 v2, 0x19

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 803
    add-long v0, v21, v15

    move-wide/from16 v21, v0

    move-wide v2, v15

    const/16 v4, 0x1d

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 804
    add-long v0, v9, v19

    move-wide v9, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x27

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 805
    add-long v0, v13, v23

    move-wide v13, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 807
    add-long v0, v21, v11

    move-wide/from16 v21, v0

    const/16 v2, 0x8

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 808
    add-long v0, v9, v23

    move-wide v9, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x23

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 809
    add-long v0, v13, v19

    move-wide v13, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x38

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 810
    add-long v0, v17, v15

    move-wide/from16 v17, v0

    move-wide v2, v15

    const/16 v4, 0x16

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 815
    add-int/lit8 v0, v26, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 816
    add-int/lit8 v0, v26, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 817
    add-int/lit8 v0, v26, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 818
    add-int/lit8 v0, v26, 0x4

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 819
    add-int/lit8 v0, v26, 0x5

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 820
    add-int/lit8 v0, v26, 0x6

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v19, v19, v0

    .line 821
    add-int/lit8 v0, v26, 0x7

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x2

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v21, v21, v0

    .line 822
    add-int/lit8 v0, v26, 0x8

    aget-wide v0, v5, v0

    move/from16 v2, v25

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long v23, v23, v0

    .line 746
    add-int/lit8 v25, v25, 0x2

    goto/16 :goto_0

    .line 828
    :cond_2
    const/4 v0, 0x0

    aput-wide v9, p2, v0

    .line 829
    const/4 v0, 0x1

    aput-wide v11, p2, v0

    .line 830
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 831
    const/4 v0, 0x3

    aput-wide v15, p2, v0

    .line 832
    const/4 v0, 0x4

    aput-wide v17, p2, v0

    .line 833
    const/4 v0, 0x5

    aput-wide v19, p2, v0

    .line 834
    const/4 v0, 0x6

    aput-wide v21, p2, v0

    .line 835
    const/4 v0, 0x7

    aput-wide v23, p2, v0

    .line 836
    return-void
.end method

.method public ˎ([J[J)V
    .locals 28

    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->aMi:[J

    .line 841
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->aMh:[J

    .line 842
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jM()[I

    move-result-object v7

    .line 843
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v8

    .line 846
    array-length v0, v5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 850
    :cond_0
    array-length v0, v6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 852
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 855
    :cond_1
    const/4 v0, 0x0

    aget-wide v9, p1, v0

    .line 856
    const/4 v0, 0x1

    aget-wide v11, p1, v0

    .line 857
    const/4 v0, 0x2

    aget-wide v13, p1, v0

    .line 858
    const/4 v0, 0x3

    aget-wide v15, p1, v0

    .line 859
    const/4 v0, 0x4

    aget-wide v17, p1, v0

    .line 860
    const/4 v0, 0x5

    aget-wide v19, p1, v0

    .line 861
    const/4 v0, 0x6

    aget-wide v21, p1, v0

    .line 862
    const/4 v0, 0x7

    aget-wide v23, p1, v0

    .line 864
    const/16 v25, 0x11

    :goto_0
    move/from16 v0, v25

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 866
    aget v26, v7, v25

    .line 867
    aget v27, v8, v25

    .line 870
    add-int/lit8 v0, v26, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v9, v0

    .line 871
    add-int/lit8 v0, v26, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 872
    add-int/lit8 v0, v26, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 873
    add-int/lit8 v0, v26, 0x4

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 874
    add-int/lit8 v0, v26, 0x5

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 875
    add-int/lit8 v0, v26, 0x6

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v19, v19, v0

    .line 876
    add-int/lit8 v0, v26, 0x7

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x2

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v21, v21, v0

    .line 877
    add-int/lit8 v0, v26, 0x8

    aget-wide v0, v5, v0

    move/from16 v2, v25

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sub-long v23, v23, v0

    .line 881
    const/16 v0, 0x8

    move-wide/from16 v1, v21

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 882
    sub-long v21, v21, v11

    .line 883
    move-wide/from16 v0, v23

    const/16 v2, 0x23

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 884
    sub-long v9, v9, v23

    .line 885
    move-wide/from16 v0, v19

    const/16 v2, 0x38

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 886
    sub-long v13, v13, v19

    .line 887
    move-wide v0, v15

    const/16 v2, 0x16

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 888
    sub-long v17, v17, v15

    .line 890
    const/16 v0, 0x19

    move-wide/from16 v1, v17

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 891
    sub-long v17, v17, v11

    .line 892
    move-wide v0, v15

    const/16 v2, 0x1d

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 893
    sub-long v21, v21, v15

    .line 894
    move-wide/from16 v0, v19

    const/16 v2, 0x27

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 895
    sub-long v9, v9, v19

    .line 896
    move-wide/from16 v0, v23

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 897
    sub-long v13, v13, v23

    .line 899
    const/16 v0, 0xd

    invoke-static {v11, v12, v0, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 900
    sub-long/2addr v13, v11

    .line 901
    move-wide/from16 v0, v23

    const/16 v2, 0x32

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 902
    sub-long v17, v17, v23

    .line 903
    move-wide/from16 v0, v19

    const/16 v2, 0xa

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 904
    sub-long v21, v21, v19

    .line 905
    move-wide v0, v15

    const/16 v2, 0x11

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 906
    sub-long/2addr v9, v15

    .line 908
    const/16 v0, 0x27

    invoke-static {v11, v12, v0, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 909
    sub-long/2addr v9, v11

    .line 910
    move-wide v0, v15

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 911
    sub-long/2addr v13, v15

    .line 912
    move-wide/from16 v0, v19

    const/16 v2, 0x22

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 913
    sub-long v17, v17, v19

    .line 914
    move-wide/from16 v0, v23

    const/16 v2, 0x18

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 915
    sub-long v21, v21, v23

    .line 918
    aget-wide v0, v5, v26

    sub-long/2addr v9, v0

    .line 919
    add-int/lit8 v0, v26, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 920
    add-int/lit8 v0, v26, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 921
    add-int/lit8 v0, v26, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 922
    add-int/lit8 v0, v26, 0x4

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 923
    add-int/lit8 v0, v26, 0x5

    aget-wide v0, v5, v0

    aget-wide v2, v6, v27

    add-long/2addr v0, v2

    sub-long v19, v19, v0

    .line 924
    add-int/lit8 v0, v26, 0x6

    aget-wide v0, v5, v0

    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v21, v21, v0

    .line 925
    add-int/lit8 v0, v26, 0x7

    aget-wide v0, v5, v0

    move/from16 v2, v25

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v23, v23, v0

    .line 928
    const/16 v0, 0x2c

    move-wide/from16 v1, v21

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 929
    sub-long v21, v21, v11

    .line 930
    move-wide/from16 v0, v23

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 931
    sub-long v9, v9, v23

    .line 932
    move-wide/from16 v0, v19

    const/16 v2, 0x36

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 933
    sub-long v13, v13, v19

    .line 934
    move-wide v0, v15

    const/16 v2, 0x38

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 935
    sub-long v17, v17, v15

    .line 937
    const/16 v0, 0x11

    move-wide/from16 v1, v17

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 938
    sub-long v17, v17, v11

    .line 939
    move-wide v0, v15

    const/16 v2, 0x31

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 940
    sub-long v21, v21, v15

    .line 941
    move-wide/from16 v0, v19

    const/16 v2, 0x24

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 942
    sub-long v9, v9, v19

    .line 943
    move-wide/from16 v0, v23

    const/16 v2, 0x27

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 944
    sub-long v13, v13, v23

    .line 946
    const/16 v0, 0x21

    invoke-static {v11, v12, v0, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 947
    sub-long/2addr v13, v11

    .line 948
    move-wide/from16 v0, v23

    const/16 v2, 0x1b

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 949
    sub-long v17, v17, v23

    .line 950
    move-wide/from16 v0, v19

    const/16 v2, 0xe

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 951
    sub-long v21, v21, v19

    .line 952
    move-wide v0, v15

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 953
    sub-long/2addr v9, v15

    .line 955
    const/16 v0, 0x2e

    invoke-static {v11, v12, v0, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 956
    sub-long/2addr v9, v11

    .line 957
    move-wide v0, v15

    const/16 v2, 0x24

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 958
    sub-long/2addr v13, v15

    .line 959
    move-wide/from16 v0, v19

    const/16 v2, 0x13

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 960
    sub-long v17, v17, v19

    .line 961
    move-wide/from16 v0, v23

    const/16 v2, 0x25

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 962
    sub-long v21, v21, v23

    .line 864
    add-int/lit8 v25, v25, -0x2

    goto/16 :goto_0

    .line 968
    :cond_2
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    sub-long/2addr v9, v0

    .line 969
    const/4 v0, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 970
    const/4 v0, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 971
    const/4 v0, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 972
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 973
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v19, v19, v0

    .line 974
    const/4 v0, 0x6

    aget-wide v0, v5, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v21, v21, v0

    .line 975
    const/4 v0, 0x7

    aget-wide v0, v5, v0

    sub-long v23, v23, v0

    .line 980
    const/4 v0, 0x0

    aput-wide v9, p2, v0

    .line 981
    const/4 v0, 0x1

    aput-wide v11, p2, v0

    .line 982
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 983
    const/4 v0, 0x3

    aput-wide v15, p2, v0

    .line 984
    const/4 v0, 0x4

    aput-wide v17, p2, v0

    .line 985
    const/4 v0, 0x5

    aput-wide v19, p2, v0

    .line 986
    const/4 v0, 0x6

    aput-wide v21, p2, v0

    .line 987
    const/4 v0, 0x7

    aput-wide v23, p2, v0

    .line 988
    return-void
.end method
