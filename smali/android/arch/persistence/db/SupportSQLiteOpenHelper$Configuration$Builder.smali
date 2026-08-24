.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

.field mContext:Landroid/content/Context;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    .line 355
    return-void
.end method


# virtual methods
.method public build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {v0, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method

.method public callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "callback"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    .line 372
    return-object p0
.end method

.method public name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 362
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    .line 363
    return-object p0
.end method
