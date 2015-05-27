.class Lo/Ỳ$ˋ;
.super Lo/Ỳ$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ỳ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic xB:Lo/Ỳ;

.field private final xI:Lo/ন;


# direct methods
.method public constructor <init>(Lo/Ỳ;)V
    .locals 2

    .line 277
    iput-object p1, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ỳ$ˎ;-><init>(Lo/Ỳ$1;)V

    .line 278
    new-instance v0, Lo/ন;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    .line 279
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;ZLo/ᒬ;)V
    .locals 11

    .line 290
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v3

    .line 292
    invoke-virtual {p1, v3}, Lo/প;->ʰ(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lo/প;->ˋ(Lo/ন;I)V

    .line 296
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 297
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v3

    .line 302
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lo/প;->ʰ(I)V

    .line 304
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/প;->ˋ(Lo/ন;I)V

    .line 305
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 306
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v4

    .line 309
    invoke-virtual {p1, v4}, Lo/প;->ʰ(I)V

    .line 311
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xz:Lo/ᴒ;

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    new-instance v1, Lo/ᴒ;

    const/16 v2, 0x15

    invoke-interface {p3, v2}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ᴒ;-><init>(Lo/ᒳ;)V

    iput-object v1, v0, Lo/Ỳ;->xz:Lo/ᴒ;

    .line 317
    :cond_1
    add-int/lit8 v0, v3, -0x9

    sub-int/2addr v0, v4

    add-int/lit8 v5, v0, -0x4

    .line 319
    :goto_0
    if-lez v5, :cond_5

    .line 320
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lo/প;->ˋ(Lo/ন;I)V

    .line 321
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v6

    .line 322
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 323
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v7

    .line 324
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 325
    iget-object v0, p0, Lo/Ỳ$ˋ;->xI:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v8

    .line 328
    invoke-virtual {p1, v8}, Lo/প;->ʰ(I)V

    .line 329
    add-int/lit8 v0, v8, 0x5

    sub-int/2addr v5, v0

    .line 331
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xt:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    goto :goto_0

    .line 336
    :cond_2
    const/4 v9, 0x0

    .line 337
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    .line 339
    :sswitch_0
    new-instance v9, Lo/ᘢ;

    const/16 v0, 0xf

    invoke-interface {p3, v0}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v0

    invoke-direct {v9, v0}, Lo/ᘢ;-><init>(Lo/ᒳ;)V

    .line 340
    goto :goto_1

    .line 343
    :sswitch_1
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    goto/16 :goto_0

    .line 346
    :cond_3
    new-instance v9, Lo/ᔫ;

    invoke-interface {p3, v6}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v0

    invoke-direct {v9, v0}, Lo/ᔫ;-><init>(Lo/ᒳ;)V

    .line 347
    goto :goto_1

    .line 349
    :sswitch_2
    new-instance v10, Lo/ᴫ;

    const/16 v0, 0x100

    invoke-interface {p3, v0}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v0

    invoke-direct {v10, v0}, Lo/ᴫ;-><init>(Lo/ᒳ;)V

    .line 350
    new-instance v9, Lo/ᚆ;

    const/16 v0, 0x1b

    invoke-interface {p3, v0}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v0

    invoke-direct {v9, v0, v10}, Lo/ᚆ;-><init>(Lo/ᒳ;Lo/ᴫ;)V

    .line 351
    goto :goto_1

    .line 353
    :sswitch_3
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v9, v0, Lo/Ỳ;->xz:Lo/ᴒ;

    .line 357
    :goto_1
    if-eqz v9, :cond_4

    .line 358
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xt:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 359
    iget-object v0, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    new-instance v1, Lo/Ỳ$ˊ;

    iget-object v2, p0, Lo/Ỳ$ˋ;->xB:Lo/Ỳ;

    invoke-direct {v1, v2, v9}, Lo/Ỳ$ˊ;-><init>(Lo/Ỳ;Lo/ᚁ;)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    :cond_4
    goto/16 :goto_0

    .line 363
    :cond_5
    invoke-interface {p3}, Lo/ᒬ;->ᒯ()V

    .line 364
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x15 -> :sswitch_3
        0x1b -> :sswitch_2
        0x81 -> :sswitch_1
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method public ᒮ()V
    .locals 0

    .line 284
    return-void
.end method
