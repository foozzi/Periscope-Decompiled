.class Lo/aet$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;

.field private final mCancel:Z


# direct methods
.method constructor <init>(Lo/aet;Z)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lo/aet$if;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput-boolean p2, p0, Lo/aet$if;->mCancel:Z

    .line 1167
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1171
    iget-boolean v0, p0, Lo/aet$if;->mCancel:Z

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lo/aet$if;->bBV:Lo/aet;

    invoke-virtual {v0}, Lo/aet;->finish()V

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v0, p0, Lo/aet$if;->bBV:Lo/aet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aet;->ˊ(Lo/aet;Z)V

    .line 1176
    :goto_0
    return-void
.end method
