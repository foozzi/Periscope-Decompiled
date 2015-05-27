.class public Lo/afp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/afo;


# instance fields
.field private final bCu:Lo/ahb;


# direct methods
.method public constructor <init>(Lo/ahb;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/afp;->bCu:Lo/ahb;

    .line 13
    return-void
.end method


# virtual methods
.method public xr()V
    .locals 2

    .line 17
    iget-object v0, p0, Lo/afp;->bCu:Lo/ahb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ahb;->setVisibility(I)V

    .line 18
    return-void
.end method

.method public xs()V
    .locals 2

    .line 22
    iget-object v0, p0, Lo/afp;->bCu:Lo/ahb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ahb;->setVisibility(I)V

    .line 23
    return-void
.end method

.method public xt()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lo/afp;->bCu:Lo/ahb;

    invoke-virtual {v0}, Lo/ahb;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
