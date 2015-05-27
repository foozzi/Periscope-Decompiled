.class public Lo/amp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;


# instance fields
.field private final bNl:Lo/amq;

.field private mState:I

.field private Ț:I


# direct methods
.method public constructor <init>(Lo/amq;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/amp;->bNl:Lo/amq;

    .line 17
    return-void
.end method


# virtual methods
.method public ʹ(I)V
    .locals 2

    .line 32
    iget v0, p0, Lo/amp;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 33
    iget-object v0, p0, Lo/amp;->bNl:Lo/amq;

    iget v1, p0, Lo/amp;->Ț:I

    invoke-virtual {v0, v1}, Lo/amq;->setPosition(I)V

    .line 35
    :cond_0
    iput p1, p0, Lo/amp;->mState:I

    .line 36
    return-void
.end method

.method public ˊ(IFI)V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/amp;->bNl:Lo/amq;

    invoke-virtual {v0, p1, p2}, Lo/amq;->ᐝ(IF)V

    .line 22
    return-void
.end method

.method public ﾞ(I)V
    .locals 0

    .line 26
    iput p1, p0, Lo/amp;->Ț:I

    .line 27
    return-void
.end method
