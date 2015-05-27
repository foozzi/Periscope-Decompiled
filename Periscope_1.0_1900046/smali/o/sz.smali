.class public Lo/sz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final PX:Lo/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ta<TT;>;"
        }
    .end annotation
.end field

.field private final Yt:Lo/sx;

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/sx;Lo/ta;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/sx;Lo/ta<TT;>;Ljava/lang/String;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/sz;->Yt:Lo/sx;

    .line 16
    iput-object p2, p0, Lo/sz;->PX:Lo/ta;

    .line 17
    iput-object p3, p0, Lo/sz;->key:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 35
    iget-object v0, p0, Lo/sz;->Yt:Lo/sx;

    invoke-interface {v0}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lo/sz;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public dH()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/sz;->Yt:Lo/sx;

    invoke-interface {v0}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 29
    iget-object v0, p0, Lo/sz;->PX:Lo/ta;

    iget-object v1, p0, Lo/sz;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ta;->ᕁ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ᵓ(Ljava/lang/Object;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/sz;->Yt:Lo/sx;

    iget-object v1, p0, Lo/sz;->Yt:Lo/sx;

    invoke-interface {v1}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lo/sz;->key:Ljava/lang/String;

    iget-object v3, p0, Lo/sz;->PX:Lo/ta;

    invoke-interface {v3, p1}, Lo/ta;->ǃ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z

    .line 24
    return-void
.end method
