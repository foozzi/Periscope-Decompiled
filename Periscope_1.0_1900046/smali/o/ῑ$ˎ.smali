.class Lo/ῑ$ˎ;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method private constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lo/ῑ$ˎ;->j:Lo/ῑ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ;Lo/‿;)V
    .locals 0

    .line 1703
    invoke-direct {p0, p1}, Lo/ῑ$ˎ;-><init>(Lo/ῑ;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1706
    iget-object v0, p0, Lo/ῑ$ˎ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lo/ῑ$ˎ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->show()V

    .line 1710
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1714
    iget-object v0, p0, Lo/ῑ$ˎ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->dismiss()V

    .line 1715
    return-void
.end method
