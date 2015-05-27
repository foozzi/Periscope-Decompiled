.class Lo/ˍ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ᵥ:Lo/ˉ;

.field final synthetic ﯨ:I

.field final synthetic ﹴ:I


# direct methods
.method constructor <init>(Lo/ˉ;II)V
    .locals 0

    .line 530
    iput-object p1, p0, Lo/ˍ;->ᵥ:Lo/ˉ;

    iput p2, p0, Lo/ˍ;->ﯨ:I

    iput p3, p0, Lo/ˍ;->ﹴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 532
    iget-object v0, p0, Lo/ˍ;->ᵥ:Lo/ˉ;

    iget-object v1, p0, Lo/ˍ;->ᵥ:Lo/ˉ;

    iget-object v1, v1, Lo/ˉ;->mActivity:Lo/ι;

    iget-object v1, v1, Lo/ι;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lo/ˍ;->ﯨ:I

    iget v3, p0, Lo/ˍ;->ﹴ:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lo/ˉ;->ˊ(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 533
    return-void
.end method
