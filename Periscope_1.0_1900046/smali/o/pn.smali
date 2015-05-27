.class public interface abstract Lo/pn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pn$1;,
        Lo/pn$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Ve:Lo/pn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lo/pn$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/pn$if;-><init>(Lo/pn$1;)V

    sput-object v0, Lo/pn;->Ve:Lo/pn;

    return-void
.end method


# virtual methods
.method public abstract ˏ(Ljava/lang/Exception;)V
.end method

.method public abstract ו(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
