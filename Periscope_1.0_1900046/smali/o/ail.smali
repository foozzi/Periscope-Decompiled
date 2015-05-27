.class Lo/ail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;


# instance fields
.field private final bGq:Lo/aik;


# direct methods
.method public constructor <init>(Lo/aik;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/ail;->bGq:Lo/aik;

    .line 13
    return-void
.end method


# virtual methods
.method public ʹ(I)V
    .locals 2

    .line 24
    iget-object v0, p0, Lo/ail;->bGq:Lo/aik;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/aik;->setRefreshable(Z)V

    .line 25
    return-void
.end method

.method public ˊ(IFI)V
    .locals 0

    .line 16
    return-void
.end method

.method public ﾞ(I)V
    .locals 0

    .line 20
    return-void
.end method
