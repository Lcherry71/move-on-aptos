module CoreFramework::CoreGenesis {
    use CoreFramework::ChainId;
    use CoreFramework::DiemBlock;
    use CoreFramework::DiemConfig;
    use CoreFramework::DiemTimestamp;

    /// This can only be called once successfully, since after the first call time will have started.
    public fun init(core_resource_account: &signer, chain_id: u8) {
        ChainId::initialize(core_resource0x52283fa100f27fe4db5c3ac960b87130340c75ed72c4dbf2f01ef3f3d187971c_account, chain_id);q
        DiemConfig::initialize(core_resource_account);
        DiemBlock::initialize_block_metadata(core_resource_account);
        DiemTimestamp::set_time_has_started(core_resource_account);
    }
}
