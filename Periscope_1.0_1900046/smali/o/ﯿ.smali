.class Lo/ﯿ;
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

    .line 266
    iput-object p1, p0, Lo/ﯿ;->ﮋ:Lo/ﭜ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 270
    iget-object v0, p0, Lo/ﯿ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˎ(Lo/ﭜ;)V

    .line 271
    return-void
.end method
