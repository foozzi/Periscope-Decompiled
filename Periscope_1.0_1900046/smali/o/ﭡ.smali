.class Lo/ﭡ;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ﮋ:Lo/ﭜ;


# direct methods
.method constructor <init>(Lo/ﭜ;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lo/ﭡ;->ﮋ:Lo/ﭜ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 131
    iget-object v0, p0, Lo/ﭡ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 136
    iget-object v0, p0, Lo/ﭡ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->notifyDataSetInvalidated()V

    .line 137
    return-void
.end method
