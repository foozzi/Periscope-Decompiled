.class Lo/vo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/vn$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bnG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/xh;>;"
        }
    .end annotation
.end field

.field private bnH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/xh;>;"
        }
    .end annotation
.end field

.field private bnI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/xh;>;"
        }
    .end annotation
.end field

.field final synthetic bnJ:Lo/vn;


# direct methods
.method constructor <init>(Lo/vn;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lo/vo;->bnJ:Lo/vn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/vo;->bnG:Ljava/util/List;

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/vo;->bnH:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/vo;->bnI:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ˊ(Lo/aai;)V
    .locals 2

    .line 269
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lo/vo;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˊ(Lo/vn;)Lo/vn$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/vn$if;->onEventMainThread(Lo/aai;)V

    .line 271
    return-void

    .line 273
    :cond_0
    sget-object v0, Lo/vn$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/vo;->bnG:Ljava/util/List;

    .line 276
    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/vo;->bnI:Ljava/util/List;

    .line 280
    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/vo;->bnH:Ljava/util/List;

    .line 287
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ˊ(Lo/aam;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lo/vo;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˊ(Lo/vn;)Lo/vn$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/vn$if;->onEventMainThread(Lo/aam;)V

    .line 264
    return-void
.end method

.method public ﮅ(I)V
    .locals 4

    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lo/vo;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    invoke-virtual {v0}, Lo/zp;->uZ()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lo/vo;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    iget-object v1, p0, Lo/vo;->bnI:Ljava/util/List;

    iget-object v2, p0, Lo/vo;->bnH:Ljava/util/List;

    iget-object v3, p0, Lo/vo;->bnG:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lo/zp;->ˊ(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 298
    :goto_0
    return-void
.end method
