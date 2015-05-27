.class public Lo/ເ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ເ$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:Ljava/lang/Object;DataType:Ljava/lang/Object;ResourceType:Ljava/lang/Object;TranscodeType:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected final dU:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TModelType;>;"
        }
    .end annotation
.end field

.field protected final dV:Landroid/content/Context;

.field protected final dW:Lo/ᓲ;

.field protected final dX:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final dY:Lo/ᐜ;

.field protected final dZ:Lo/ধ;

.field private ea:Lo/ᓸ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14f8<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private eb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private ec:Lo/ﮆ;

.field private ed:Z

.field private ee:I

.field private ef:I

.field private eg:Lo/ᖕ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1595<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private eh:Ljava/lang/Float;

.field private ei:Lo/ເ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0ec0<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private ej:Ljava/lang/Float;

.field private ek:Landroid/graphics/drawable/Drawable;

.field private el:Landroid/graphics/drawable/Drawable;

.field private em:Lo/ᔿ;

.field private en:Z

.field private eo:Lo/ḹ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1e39<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private ep:I

.field private eq:I

.field private er:Lo/ʖ;

.field private es:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<TResourceType;>;"
        }
    .end annotation
.end field

.field private et:Z

.field private eu:Z

.field private ev:Landroid/graphics/drawable/Drawable;

.field private ew:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lo/ᔁ;Ljava/lang/Class;Lo/ᓲ;Lo/ᐜ;Lo/ধ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/Class<TModelType;>;Lo/\u1501<TModelType;TDataType;TResourceType;TTranscodeType;>;Ljava/lang/Class<TTranscodeType;>;Lo/\u14f2;Lo/\u141c;Lo/\u09a7;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lo/ﮊ;->ἵ()Lo/ﮊ;

    move-result-object v0

    iput-object v0, p0, Lo/ເ;->ec:Lo/ﮆ;

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lo/ເ;->ej:Ljava/lang/Float;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ເ;->em:Lo/ᔿ;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ເ;->en:Z

    .line 73
    invoke-static {}, Lo/ḽ;->Ḷ()Lo/ḹ;

    move-result-object v0

    iput-object v0, p0, Lo/ເ;->eo:Lo/ḹ;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lo/ເ;->ep:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lo/ເ;->eq:I

    .line 76
    sget-object v0, Lo/ʖ;->ho:Lo/ʖ;

    iput-object v0, p0, Lo/ເ;->er:Lo/ʖ;

    .line 77
    invoke-static {}, Lo/ᒦ;->ﱢ()Lo/ᒦ;

    move-result-object v0

    iput-object v0, p0, Lo/ເ;->es:Lo/ﺭ;

    .line 97
    iput-object p1, p0, Lo/ເ;->dV:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lo/ເ;->dU:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lo/ເ;->dX:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lo/ເ;->dW:Lo/ᓲ;

    .line 101
    iput-object p6, p0, Lo/ເ;->dY:Lo/ᐜ;

    .line 102
    iput-object p7, p0, Lo/ເ;->dZ:Lo/ধ;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lo/ᓸ;

    invoke-direct {v0, p3}, Lo/ᓸ;-><init>(Lo/ᔁ;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    return-void
.end method

.method private ˊ(Lo/ﭩ;FLo/ᔿ;Lo/ᔭ;)Lo/ᔨ;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb69<TTranscodeType;>;FLo/\u153f;Lo/\u152d;)Lo/\u1528;"
        }
    .end annotation

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lo/ເ;->ea:Lo/ᓸ;

    move-object/from16 v0, p0

    iget-object v2, v0, Lo/ເ;->eb:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lo/ເ;->ec:Lo/ﮆ;

    move-object/from16 v0, p0

    iget-object v4, v0, Lo/ເ;->dV:Landroid/content/Context;

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v0, p0

    iget-object v8, v0, Lo/ເ;->ek:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lo/ເ;->ee:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lo/ເ;->el:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lo/ເ;->ef:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lo/ເ;->ev:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lo/ເ;->ew:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lo/ເ;->eg:Lo/ᖕ;

    move-object/from16 v15, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ເ;->dW:Lo/ᓲ;

    invoke-virtual {v0}, Lo/ᓲ;->Ꮮ()Lo/ʷ;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ເ;->es:Lo/ﺭ;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ເ;->dX:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ເ;->en:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ເ;->eo:Lo/ḹ;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lo/ເ;->eq:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lo/ເ;->ep:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ເ;->er:Lo/ʖ;

    move-object/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lo/ᔄ;->ˊ(Lo/ᔁ;Ljava/lang/Object;Lo/ﮆ;Landroid/content/Context;Lo/ᔿ;Lo/ﭩ;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILo/ᖕ;Lo/ᔭ;Lo/ʷ;Lo/ﺭ;Ljava/lang/Class;ZLo/ḹ;IILo/ʖ;)Lo/ᔄ;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/ﭩ;Lo/ᴋ;)Lo/ᔨ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb69<TTranscodeType;>;Lo/\u1d0b;)Lo/\u1528;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    if-eqz v0, :cond_4

    .line 795
    iget-boolean v0, p0, Lo/ເ;->eu:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_0
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    iget-object v0, v0, Lo/ເ;->eo:Lo/ḹ;

    invoke-static {}, Lo/ḽ;->Ḷ()Lo/ḹ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    iget-object v1, p0, Lo/ເ;->eo:Lo/ḹ;

    iput-object v1, v0, Lo/ເ;->eo:Lo/ḹ;

    .line 804
    :cond_1
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    iget-object v0, v0, Lo/ເ;->em:Lo/ᔿ;

    if-nez v0, :cond_2

    .line 805
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    invoke-direct {p0}, Lo/ເ;->ი()Lo/ᔿ;

    move-result-object v1

    iput-object v1, v0, Lo/ເ;->em:Lo/ᔿ;

    .line 808
    :cond_2
    iget v0, p0, Lo/ເ;->eq:I

    iget v1, p0, Lo/ເ;->ep:I

    invoke-static {v0, v1}, Lo/ﾕ;->ᵀ(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    iget v0, v0, Lo/ເ;->eq:I

    iget-object v1, p0, Lo/ເ;->ei:Lo/ເ;

    iget v1, v1, Lo/ເ;->ep:I

    invoke-static {v0, v1}, Lo/ﾕ;->ᵀ(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    iget v1, p0, Lo/ເ;->eq:I

    iget v2, p0, Lo/ເ;->ep:I

    invoke-virtual {v0, v1, v2}, Lo/ເ;->ᔈ(II)Lo/ເ;

    .line 814
    :cond_3
    new-instance v3, Lo/ᴋ;

    invoke-direct {v3, p2}, Lo/ᴋ;-><init>(Lo/ᔭ;)V

    .line 815
    iget-object v0, p0, Lo/ເ;->ej:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lo/ເ;->em:Lo/ᔿ;

    invoke-direct {p0, p1, v0, v1, v3}, Lo/ເ;->ˊ(Lo/ﭩ;FLo/ᔿ;Lo/ᔭ;)Lo/ᔨ;

    move-result-object v4

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ເ;->eu:Z

    .line 819
    iget-object v0, p0, Lo/ເ;->ei:Lo/ເ;

    invoke-direct {v0, p1, v3}, Lo/ເ;->ˊ(Lo/ﭩ;Lo/ᴋ;)Lo/ᔨ;

    move-result-object v5

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ເ;->eu:Z

    .line 821
    invoke-virtual {v3, v4, v5}, Lo/ᴋ;->ˊ(Lo/ᔨ;Lo/ᔨ;)V

    .line 822
    return-object v3

    .line 823
    :cond_4
    iget-object v0, p0, Lo/ເ;->eh:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 825
    new-instance v3, Lo/ᴋ;

    invoke-direct {v3, p2}, Lo/ᴋ;-><init>(Lo/ᔭ;)V

    .line 826
    iget-object v0, p0, Lo/ເ;->ej:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lo/ເ;->em:Lo/ᔿ;

    invoke-direct {p0, p1, v0, v1, v3}, Lo/ເ;->ˊ(Lo/ﭩ;FLo/ᔿ;Lo/ᔭ;)Lo/ᔨ;

    move-result-object v4

    .line 827
    iget-object v0, p0, Lo/ເ;->eh:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0}, Lo/ເ;->ი()Lo/ᔿ;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v3}, Lo/ເ;->ˊ(Lo/ﭩ;FLo/ᔿ;Lo/ᔭ;)Lo/ᔨ;

    move-result-object v5

    .line 828
    invoke-virtual {v3, v4, v5}, Lo/ᴋ;->ˊ(Lo/ᔨ;Lo/ᔨ;)V

    .line 829
    return-object v3

    .line 832
    :cond_5
    iget-object v0, p0, Lo/ເ;->ej:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lo/ເ;->em:Lo/ᔿ;

    invoke-direct {p0, p1, v0, v1, p2}, Lo/ເ;->ˊ(Lo/ﭩ;FLo/ᔿ;Lo/ᔭ;)Lo/ᔨ;

    move-result-object v0

    return-object v0
.end method

.method private ˋ(Lo/ﭩ;)Lo/ᔨ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb69<TTranscodeType;>;)Lo/\u1528;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lo/ເ;->em:Lo/ᔿ;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lo/ᔿ;->eU:Lo/ᔿ;

    iput-object v0, p0, Lo/ເ;->em:Lo/ᔿ;

    .line 790
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ເ;->ˊ(Lo/ﭩ;Lo/ᴋ;)Lo/ᔨ;

    move-result-object v0

    return-object v0
.end method

.method private ი()Lo/ᔿ;
    .locals 3

    .line 776
    iget-object v0, p0, Lo/ເ;->em:Lo/ᔿ;

    sget-object v1, Lo/ᔿ;->eV:Lo/ᔿ;

    if-ne v0, v1, :cond_0

    .line 777
    sget-object v2, Lo/ᔿ;->eU:Lo/ᔿ;

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lo/ເ;->em:Lo/ᔿ;

    sget-object v1, Lo/ᔿ;->eU:Lo/ᔿ;

    if-ne v0, v1, :cond_1

    .line 779
    sget-object v2, Lo/ᔿ;->eT:Lo/ᔿ;

    goto :goto_0

    .line 781
    :cond_1
    sget-object v2, Lo/ᔿ;->eS:Lo/ᔿ;

    .line 783
    :goto_0
    return-object v2
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/ເ;->ܢ()Lo/ເ;

    move-result-object v0

    return-object v0
.end method

.method public ʴ(Ljava/lang/Object;)Lo/ເ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 606
    iput-object p1, p0, Lo/ເ;->eb:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ເ;->ed:Z

    .line 608
    return-object p0
.end method

.method ˊ(Lo/ḹ;)Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1e39<TTranscodeType;>;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lo/ເ;->eo:Lo/ḹ;

    .line 422
    return-object p0
.end method

.method public ˊ(Landroid/widget/ImageView;)Lo/ﭩ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/ImageView;)Lo/\ufb69<TTranscodeType;>;"
        }
    .end annotation

    .line 676
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-boolean v0, p0, Lo/ເ;->et:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lo/ເ$1;->ex:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 684
    :pswitch_0
    invoke-virtual {p0}, Lo/ເ;->ܖ()V

    .line 685
    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {p0}, Lo/ເ;->ڔ()V

    .line 690
    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/ເ;->dW:Lo/ᓲ;

    iget-object v1, p0, Lo/ເ;->dX:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lo/ᓲ;->ˊ(Landroid/widget/ImageView;Ljava/lang/Class;)Lo/ﭩ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ເ;->ˊ(Lo/ﭩ;)Lo/ﭩ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public ˊ(Lo/ﭩ;)Lo/ﭩ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::Lo/\ufb69<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 642
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iget-boolean v0, p0, Lo/ເ;->ed:Z

    if-nez v0, :cond_1

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-interface {p1}, Lo/ﭩ;->ṝ()Lo/ᔨ;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_2

    .line 653
    invoke-interface {v2}, Lo/ᔨ;->clear()V

    .line 654
    iget-object v0, p0, Lo/ເ;->dY:Lo/ᐜ;

    invoke-virtual {v0, v2}, Lo/ᐜ;->ˋ(Lo/ᔨ;)V

    .line 655
    invoke-interface {v2}, Lo/ᔨ;->recycle()V

    .line 658
    :cond_2
    invoke-direct {p0, p1}, Lo/ເ;->ˋ(Lo/ﭩ;)Lo/ᔨ;

    move-result-object v3

    .line 659
    invoke-interface {p1, v3}, Lo/ﭩ;->ʻ(Lo/ᔨ;)V

    .line 660
    iget-object v0, p0, Lo/ເ;->dZ:Lo/ধ;

    invoke-interface {v0, p1}, Lo/ধ;->ˊ(Lo/ร;)V

    .line 661
    iget-object v0, p0, Lo/ເ;->dY:Lo/ᐜ;

    invoke-virtual {v0, v3}, Lo/ᐜ;->ˊ(Lo/ᔨ;)V

    .line 663
    return-object p1
.end method

.method public ˋ(Lo/ʖ;)Lo/ເ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0296;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lo/ເ;->er:Lo/ʖ;

    .line 273
    return-object p0
.end method

.method public ˋ(Lo/ﭥ;)Lo/ເ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb65<TDataType;>;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    invoke-virtual {v0, p1}, Lo/ᓸ;->ˎ(Lo/ﭥ;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public ˋ(Lo/ﮆ;)Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lo/ເ;->ec:Lo/ﮆ;

    .line 591
    return-object p0
.end method

.method public ˋ(Lo/ﺀ;)Lo/ເ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<TDataType;TResourceType;>;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    invoke-virtual {v0, p1}, Lo/ᓸ;->ˎ(Lo/ﺀ;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public varargs ˎ([Lo/ﺭ;)Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Lo/\ufead<TResourceType;>;)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ເ;->et:Z

    .line 323
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lo/ເ;->es:Lo/ﺭ;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Lo/ﹱ;

    invoke-direct {v0, p1}, Lo/ﹱ;-><init>([Lo/ﺭ;)V

    iput-object v0, p0, Lo/ເ;->es:Lo/ﺭ;

    .line 329
    :goto_0
    return-object p0
.end method

.method public ˡ(Z)Lo/ເ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 548
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/ເ;->en:Z

    .line 550
    return-object p0
.end method

.method ڔ()V
    .locals 0

    .line 772
    return-void
.end method

.method ܖ()V
    .locals 0

    .line 768
    return-void
.end method

.method public ܢ()Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 624
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ເ;

    move-object v1, v0

    .line 626
    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ເ;->ea:Lo/ᓸ;

    invoke-virtual {v0}, Lo/ᓸ;->ᒩ()Lo/ᓸ;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lo/ເ;->ea:Lo/ᓸ;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return-object v1

    .line 628
    :catch_0
    move-exception v1

    .line 629
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ა()Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 367
    invoke-static {}, Lo/ḽ;->Ḷ()Lo/ḹ;

    move-result-object v1

    .line 368
    invoke-virtual {p0, v1}, Lo/ເ;->ˊ(Lo/ḹ;)Lo/ເ;

    move-result-object v0

    return-object v0
.end method

.method public ᔈ(II)Lo/ເ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 563
    invoke-static {p1, p2}, Lo/ﾕ;->ᵀ(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iput p1, p0, Lo/ເ;->eq:I

    .line 567
    iput p2, p0, Lo/ເ;->ep:I

    .line 569
    return-object p0
.end method

.method public ﹻ(I)Lo/ເ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Lo/\u0ec0<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 434
    iput p1, p0, Lo/ເ;->ee:I

    .line 436
    return-object p0
.end method
