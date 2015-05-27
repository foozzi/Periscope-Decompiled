.class public interface abstract Lo/Ｌ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final jA:Lo/Ｌ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/ｧ;

    invoke-direct {v0}, Lo/ｧ;-><init>()V

    sput-object v0, Lo/Ｌ;->jA:Lo/Ｌ;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end method
